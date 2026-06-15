# 🏨 Hostel Management System — SQL Learning Project

> A hands-on SQL project built to learn, practice, and solidify core database concepts through a real-world hostel management use case.

---

## 📌 About This Project

This repository is my personal SQL learning ground. The goal is to design and build a **Hostel Management System** database from scratch — starting with schema design, then progressively adding data manipulation, queries, views, and more as I advance through my SQL course.

Every file here represents a concept I've learned, applied, and tested myself.

---

## 🗂️ Project Structure

| File | Chapter | Description |
|------|---------|-------------|
| `CH1_Schema/CH1_Schema.sql` | Chapter 1 | Database creation & initial table schema design |
| `CH2_DML/CH2_DML.sql` | Chapter 2 | INSERT sample student data + basic SELECT queries |

---

## 📖 What's Been Done So Far

---

### ✅ Chapter 1 — Database Schema (`CH1_Schema/CH1_Schema.sql`)

This is the foundation of the entire project. It covers:

**1. Creating the Database**
```sql
CREATE DATABASE hostel_management;
USE hostel_management;
```

**2. Designing the `students` Table**

The first core entity of the system — storing key information about each hostel resident.

```sql
CREATE TABLE students (
    student_id  INT PRIMARY KEY AUTO_INCREMENT,
    Name        VARCHAR(100) NOT NULL,
    Age         INT,
    Gender      ENUM ('Male', 'Female', 'Other'),
    Room_number INT NOT NULL,
    Fee_status  ENUM ('Paid', 'Due') NOT NULL
);
```

**Concepts Practised:**
- `CREATE DATABASE` and `USE` statements
- `CREATE TABLE` with proper column definitions
- `PRIMARY KEY` and `AUTO_INCREMENT` for unique student IDs
- `VARCHAR` for text fields with length constraints
- `INT` for numeric fields
- `ENUM` for restricted-value fields (Gender, Fee Status)
- `NOT NULL` constraints to enforce data integrity

---

### ✅ Chapter 2 — Data Manipulation Language (`CH2_DML/CH2_DML.sql`)

Inserted 10 real student records into the `students` table and ran practice queries on the data.

**Sample Data Inserted:**

| student_id | Name | Age | Gender | Room_number | Fee_status |
|------------|------|-----|--------|-------------|------------|
| 1 | Aarav Sharma | 19 | Male | 101 | Paid |
| 2 | Priya Mehta | 20 | Female | 102 | Due |
| 3 | Rohit Verma | 21 | Male | 101 | Paid |
| 4 | Sneha Iyer | 18 | Female | 103 | Paid |
| 5 | Karan Patel | 22 | Male | 104 | Due |
| 6 | Anjali Singh | 19 | Female | 102 | Paid |
| 7 | Vikram Nair | 20 | Male | 105 | Due |
| 8 | Pooja Reddy | 21 | Female | 103 | Paid |
| 9 | Arjun Gupta | 18 | Male | 104 | Paid |
| 10 | Ritika Joshi | 22 | Female | 105 | Due |

**Concepts Practised:**
- `INSERT INTO` with multiple rows in a single statement
- `SELECT *` to verify all inserted data
- `WHERE` clause to filter by Fee_status, Gender, Room_number
- `ORDER BY` to sort students by Age ascending
- `GROUP BY` with `COUNT()` to summarize Paid vs Due fee counts

---

## 🧱 Database Design Overview

### Entity: `students`

| Column | Data Type | Constraints | Description |
|--------|-----------|-------------|-------------|
| `student_id` | INT | PRIMARY KEY, AUTO_INCREMENT | Unique identifier for each student |
| `Name` | VARCHAR(100) | NOT NULL | Full name of the student |
| `Age` | INT | — | Age of the student |
| `Gender` | ENUM | — | Male / Female / Other |
| `Room_number` | INT | NOT NULL | Assigned room in the hostel |
| `Fee_status` | ENUM | NOT NULL | Whether fee is Paid or Due |

---

## 🚀 How to Run

1. Make sure you have **MySQL** (or any compatible SQL client like MySQL Workbench, DBeaver, or phpMyAdmin) installed.
2. Open the `.sql` file in your SQL client.
3. Run CH1 first to create the database and table, then CH2 to insert data.

```bash
mysql -u root -p < CH1_Schema/CH1_Schema.sql
mysql -u root -p < CH2_DML/CH2_DML.sql
```

Or paste the contents directly into your SQL editor and execute in order.

---

## 🎯 Learning Goals

- [x] Create and manage databases
- [x] Design tables with appropriate data types and constraints
- [x] Insert records using DML (`INSERT INTO`)
- [x] Query data using `SELECT` and `WHERE`
- [ ] Use `UPDATE` and `DELETE` statements
- [ ] Use `ORDER BY`, `GROUP BY`, `HAVING`
- [ ] Use `JOIN` to relate multiple tables
- [ ] Create `VIEWS` for common queries
- [ ] Write `STORED PROCEDURES` and `TRIGGERS`
- [ ] Implement indexing for performance
- [ ] Design relationships (rooms, wardens, fees, complaints)

---

## 🔭 Planned Additions

As I progress through my SQL course, I plan to add:

- `CH3_Queries/` — Advanced SELECT, UPDATE, DELETE, ORDER BY, GROUP BY, HAVING
- `CH4_Joins/` — Add `rooms` table and practice JOIN queries
- `CH5_Functions/` — Aggregate functions, string functions, date functions
- `CH6_Views/` — Create views for common hostel reports
- `CH7_Procedures/` — Stored procedures and triggers
- New tables: `rooms`, `fees`, `wardens`, `complaints`

---

## 🛠️ Tech Stack

- **Database:** MySQL
- **Language:** SQL
- **Tools:** MySQL Workbench

---

## 👤 Author

**Roussshan**
- GitHub: [@Roussshan](https://github.com/Roussshan)

---

## 📝 Notes

This is a learning project. Code is written, broken, fixed, and improved daily as part of consistent SQL practice. Expect this repository to grow chapter by chapter.

> *"The best way to learn SQL is to build something real."*
