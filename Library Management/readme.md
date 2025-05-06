🔖 Project Title:
"Library Management Analytics with SQL"

📘 Project Overview:
This project focuses on building and analyzing a relational database for a library system using SQL. The dataset includes critical entities like books, branches, employees, members, and transaction statuses (issue and return). The aim is to use SQL queries to answer real-world analytical and operational questions that could arise in a library management system.

🧩 Key Components of the Dataset:
Books

Attributes: Book_ID, Title, Author, Genre, Published_Year, ISBN

Purpose: Tracks all available books across branches.

Branches

Attributes: Branch_ID, Branch_Name, Location, Manager_ID

Purpose: Represents the different physical locations of the library.

Employees_Lib

Attributes: Employee_ID, Name, Branch_ID, Role, Date_Joined

Purpose: Manages staff involved in book issuing, administration, etc.

Members_Lib

Attributes: Member_ID, Name, Membership_Date, Contact, Branch_ID

Purpose: Details about registered library members.

Issued_Status

Attributes: Issue_ID, Book_ID, Member_ID, Employee_ID, Issue_Date, Due_Date

Purpose: Tracks which books are issued, when, and by whom.

Return_Status

Attributes: Return_ID, Issue_ID, Return_Date, Fine

Purpose: Tracks when a book is returned and calculates any applicable fines.

📊 Possible Analytical Use Cases:
Number of books issued per branch per month.

List of members with overdue books.

Top 5 most issued books.

Employee performance based on number of transactions.

Book availability across all branches.

Average return time by genre or member.
