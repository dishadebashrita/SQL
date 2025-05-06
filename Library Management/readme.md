# 📚 Library Management Analytics with SQL

Welcome to the **Library Management Analytics** project! This repository is a structured SQL-based analytical case study built around a fictional library system. It demonstrates how SQL can be used to model real-world relational data and extract valuable business insights for operational and strategic decisions.

---

## 🔖 Project Title:
**Library Management Analytics with SQL**

---

## 📘 Project Overview

This project focuses on designing and querying a relational database for a library system. The dataset simulates entities such as books, branches, employees, members, book issue records, and return statuses. The goal is to leverage SQL for efficient data extraction, reporting, and analysis in a library context — a frequent scenario in data analyst or BI interviews.

---

## 🧩 Dataset Entities and Their Roles

### 📚 `Books`
- **Attributes**: `Book_ID`, `Title`, `Author`, `Genre`, `Published_Year`, `ISBN`
- **Purpose**: Stores the catalog of books in the system.

### 🏢 `Branches`
- **Attributes**: `Branch_ID`, `Branch_Name`, `Location`, `Manager_ID`
- **Purpose**: Represents physical library locations.

### 👩‍💼 `Employees_Lib`
- **Attributes**: `Employee_ID`, `Name`, `Branch_ID`, `Role`, `Date_Joined`
- **Purpose**: Contains employee records and their roles in the library.

### 👥 `Members_Lib`
- **Attributes**: `Member_ID`, `Name`, `Membership_Date`, `Contact`, `Branch_ID`
- **Purpose**: Tracks details of all registered library members.

### 📦 `Issued_Status`
- **Attributes**: `Issue_ID`, `Book_ID`, `Member_ID`, `Employee_ID`, `Issue_Date`, `Due_Date`
- **Purpose**: Logs every issued book transaction.

### 📥 `Return_Status`
- **Attributes**: `Return_ID`, `Issue_ID`, `Return_Date`, `Fine`
- **Purpose**: Tracks the return of books and any fines incurred.

---

## 📊 Sample Analytical Questions Addressed

| Use Case | Description |
|----------|-------------|
| 📈 Monthly Issuance Trends | Number of books issued per branch per month |
| 🔍 Overdue Tracking | List of members with overdue books |
| 🏆 Popular Titles | Top 5 most issued books |
| 👨‍💼 Staff KPIs | Employee performance based on number of issues handled |
| 📦 Inventory | Book availability across all branches |
| ⏱️ Return Metrics | Average return time by genre or member |

---

## 💡 Business Insights

- **Branch Performance**: Identify which branch issues the most books, helping allocate resources more effectively.
- **Popular Genres**: Determine which book genres are most read, useful for inventory stocking and promotions.
- **Overdue Management**: Identify frequently late members and books, aiding in fine policy adjustments.
- **Staff Optimization**: Reward or retrain employees based on transaction activity.
- **Return Behavior**: Understand borrowing patterns and average reading time for different genres.

---

## 🛠️ Tools Used

- **SQL (Structured Query Language)** – Core technology used for queries and analysis
- **DBMS** – MySQL / PostgreSQL (any standard RDBMS can be used)
- **Data Visualization** – Optional charts via tools like Power BI or Tableau (not included here)
- **Git & GitHub** – Version control and collaboration

---





