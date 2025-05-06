create database lib;
use lib;
select * from books;
select * from branch;
SELECT * FROM employees;
select * from members_lib;
select * from issued_status;
SHOW TABLES;
#Task 1. Create a New Book Record -- "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')"
INSERT INTO books(isbn, book_title, category, rental_price, status, author, publisher)
VALUES
('978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.');
SELECT * FROM books;

# Task 2: Update an Existing Member's Address
UPDATE members_lib SET member_address = '125 Main St' WHERE member_id = 'C101';
SELECT * FROM members_lib;

#Task 3: Delete a Record from the Issued Status Table 
#Objective: Delete the record with issued_id = 'IS121' from the issued_status table.
SELECT * FROM issued_status WHERE issued_id = 'IS121';
DELETE FROM issued_status WHERE issued_id = 'IS121';

#Task 4: Retrieve All Books Issued by a Specific Employee -- Objective: Select all books issued by the employee with emp_id = 'E101'.
SELECT * FROM issued_status WHERE issued_emp_id = 'E101';

#Task 6: Create Summary Tables: Used CTAS to generate new tables based on query results - each book and total book_issued_cnt**
CREATE TABLE book_cnts
AS    
SELECT 
    b.isbn,
    b.book_title,
    COUNT(ist.issued_id) as no_issued
FROM books as b
JOIN
issued_status as ist
ON ist.issued_book_isbn = b.isbn
GROUP BY 1, 2;

#10 queries from simple to advance  level 

#1. List all books along with their categories.
SELECT book_title, category FROM books;

#2. Find the total number of branches.
SELECT COUNT(*) AS total_branches FROM branch;

#3. Retrieve all employees working in a specific branch (e.g., branch_id = 'B001').
SELECT emp_name, position FROM employees WHERE branch_id = 'B001';
show tables;

#4. List the names of members who registered after a specific date (e.g., 2023-01-01).
SELECT member_name FROM members_lib WHERE reg_date > '2023-01-01';

#5. Find the most expensive rental book in the library.
SELECT book_title, rental_price FROM books ORDER BY rental_price DESC LIMIT 1;

#6. Get the count of books in each category.
SELECT category, COUNT(*) AS book_count FROM books GROUP BY category;

#7. Find all books issued by a specific member (e.g., issued_member_id = 'M001').
SELECT issued_book_name, issued_date FROM issued_status WHERE issued_member_id = 'M001';

#8. List all branches along with their managers' names.
RENAME TABLE `employees _lib` TO employees;
SELECT b.branch_id, b.branch_address, e.emp_name AS manager_name FROM branch AS b JOIN employees AS e
ON b.manager_id = e.emp_id;

#9. Find the total number of books issued per employee.
SELECT ist.issued_emp_id, e.emp_name, COUNT(*) AS total_books_issued FROM issued_status AS ist JOIN employees AS e ON ist.issued_emp_id = e.emp_id
GROUP BY ist.issued_emp_id, e.emp_name;

#10. Find books that have not been returned yet.
SELECT ist.issued_book_name, ist.issued_date FROM issued_status AS ist
LEFT JOIN return_status AS rs ON ist.issued_id = rs.issued_id
WHERE rs.return_id IS NULL;

#Business Insights 

#1. Which category of books is most popular among members?
SELECT b.category, COUNT(*) AS issued_count FROM books AS b JOIN issued_status AS ist ON b.ISBN = ist.issued_book_isbn
GROUP BY b.category ORDER BY issued_count DESC LIMIT 1;

#2.What is the average salary of employees by position?
SELECT position, AVG(salary) AS avg_salary FROM employees GROUP BY position;

#3. Which branch generates the highest book rentals based on rental price?
SELECT b.branch_id, SUM(bo.rental_price) AS total_rental_income FROM branch AS b JOIN employees AS e ON b.branch_id = e.branch_id
JOIN issued_status AS ist ON e.emp_id = ist.issued_emp_id
JOIN books AS bo ON ist.issued_book_isbn = bo.ISBN
GROUP BY b.branch_id ORDER BY total_rental_income DESC LIMIT 1;

#4. Who are the most active members (members who issued the most books)?
SELECT m.member_name, COUNT(*) AS total_issued FROM members_lib AS m
JOIN issued_status AS ist ON m.member_id = ist.issued_member_id
GROUP BY m.member_name ORDER BY total_issued DESC LIMIT 5;

#5. Which employee has issued the most books?
SELECT e.emp_name, COUNT(*) AS books_issued
FROM employees AS e JOIN issued_status AS ist ON e.emp_id = ist.issued_emp_id
GROUP BY e.emp_name ORDER BY books_issued DESC LIMIT 1;

