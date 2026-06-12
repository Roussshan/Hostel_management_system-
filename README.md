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
| `CH1_Shema.sql` | Chapter 1 | Database creation & initial table schema design |

---

## 📖 What's Been Done So Far

### ✅ Chapter 1 — Database Schema (`CH1_Shema.sql`)

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

**Concepts practised:**
- `CREATE DATABASE` and `USE` statements
- `CREATE TABLE` with proper column definitions
- `PRIMARY KEY` and `AUTO_INCREMENT` for unique student IDs
- `VARCHAR` for text fields with length constraints
- `INT` for numeric fields
- `ENUM` for restricted-value fields (Gender, Fee Status)
- `NOT NULL` constraints to enforce data integrity

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
3. Run the script to create the database and table.

```bash
mysql -u root -p < CH1_Shema.sql
```

Or paste the contents directly into your SQL editor and execute.

---

## 🎯 Learning Goals

- [x] Create and manage databases
- [x] Design tables with appropriate data types and constraints
- [ ] Insert, update, and delete records (DML)
- [ ] Query data using `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`
- [ ] Use `JOIN` to relate multiple tables
- [ ] Create `VIEWS` for common queries
- [ ] Write `STORED PROCEDURES` and `TRIGGERS`
- [ ] Implement indexing for performance
- [ ] Design relationships (rooms, wardens, fees, complaints)

---

## 🔭 Planned Additions

As I progress through my SQL course, I plan to add:

- `rooms` table — room capacity, type, floor details
- `fees` table — payment history, due dates, amounts
- `wardens` table — staff managing the hostel
- `complaints` table — issue tracking per student
- DML scripts — INSERT sample data into all tables
- Query scripts — practice queries covering all major SQL clauses
- Views and stored procedures

---

## 🛠️ Tech Stack

- **Database:** MySQL
- **Language:** SQL
- **Tools:** MySQL Workbench / any SQL client

---

## 👤 Author

**Roussshan**
- GitHub: [@Roussshan](https://github.com/Roussshan)

---

## 📝 Notes

This is a learning project. Code is written, broken, fixed, and improved daily as part of consistent SQL practice. Expect this repository to grow chapter by chapter.

> *"The best way to learn SQL is to build something real."*
