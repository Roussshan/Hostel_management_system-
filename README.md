# 🏨 Hostel Management System — SQL Learning Project

> A hands-on SQL project built to learn, practice, and solidify core database concepts through a real-world hostel management use case.

---

## 📌 About This Project

This repository is my personal SQL learning ground. The goal is to design and build a **Hostel Management System** database from scratch — starting with schema design, then progressively adding data manipulation, queries, constraints, functions, joins, views, and more as I advance through my SQL course.

Every file here represents a concept I've learned, applied, and tested myself.

---

## 🗂️ Project Structure

| File | Chapter | Description |
|------|---------|-------------|
| `ch1_schema/CH1_Shema.sql` | Chapter 1 | Database creation & initial table schema design |
| `ch2_adding_data/ch2_Adding_Data.sql` | Chapter 2 | INSERT sample student data |
| `ch3_querying_data/ch3_querying_data.sql` | Chapter 3 | SELECT, WHERE filters, ORDER BY, LIMIT/OFFSET, basic UPDATE |
| `ch4_modifying_data/ch4_modifying_data.sql` | Chapter 4 | UPDATE (multi-column) and DELETE operations |
| `ch5_advanced_filtering/ch5_advanced_filtering.sql` | Chapter 5 | BETWEEN, IN, LIKE, IS NULL / IS NOT NULL |

---

## 📖 What's Been Done So Far

### ✅ Chapter 1 — Schema (`ch1_schema/CH1_Shema.sql`)

Creates the database and the foundational `students` table.

```sql
CREATE DATABASE hostel_management;
USE hostel_management;

CREATE TABLE students (
    student_id  INT PRIMARY KEY AUTO_INCREMENT,
    Name        VARCHAR(100) NOT NULL,
    Age         INT,
    Gender      ENUM ('Male', 'Female', 'Other'),
    Room_number INT NOT NULL,
    Fee_status  ENUM ('Paid', 'Due') NOT NULL
);
```

**Concepts practised:** `CREATE DATABASE`, `USE`, `CREATE TABLE`, `PRIMARY KEY`, `AUTO_INCREMENT`, `VARCHAR`, `INT`, `ENUM`, `NOT NULL`.

---

### ✅ Chapter 2 — Adding Data (`ch2_adding_data/ch2_Adding_Data.sql`)

Inserted 10 student records using a single multi-row `INSERT` with explicit column names.

| student_id | Name | Age | Gender | Room_number | Fee_status |
|---|---|---|---|---|---|
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

**Concepts practised:** `INSERT INTO` (multi-row, column-name form), `SELECT *` to verify inserted data.

---

### ✅ Chapter 3 — Querying Data (`ch3_querying_data/ch3_querying_data.sql`)

Practised filtering, sorting, and limiting result sets.

**Concepts practised:**
- `WHERE` with `=`, `!=`, `<`, `>`, `<=`, `>=`
- Combining conditions with `AND` / `OR`
- `ORDER BY` (`ASC` / `DESC`)
- `LIMIT`, `LIMIT ... OFFSET ...`, and the shorthand `LIMIT offset, count`
- Introductory `UPDATE` statements (single column)

---

### ✅ Chapter 4 — Modifying Data (`ch4_modifying_data/ch4_modifying_data.sql`)

Practised changing and removing existing rows.

**Concepts practised:**
- `INSERT` with explicit primary key values
- `UPDATE` with multiple columns in one statement
- `DELETE` for a single row, multiple rows (by condition), and all rows
- Difference between deleting all rows (`DELETE FROM students;`) and removing the table itself

---

### ✅ Chapter 5 — Advanced Filtering (`ch5_advanced_filtering/ch5_advanced_filtering.sql`)

Practised more expressive ways to filter rows beyond basic comparison operators.

**Concepts practised:**
- `BETWEEN ... AND ...` on numeric ranges (`age`, `room_number`)
- `IN (...)` to match against a list of values (`gender`)
- `LIKE` pattern matching with `%` wildcard — starts with, ends with, and contains
- `IS NULL` / `IS NOT NULL` checks across multiple columns

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
2. Open each `.sql` file in your SQL client.
3. Run the chapters **in order** — each one builds on data created by the previous one.

```bash
mysql -u harry -p < ch1_schema/CH1_Shema.sql
mysql -u harry -p < ch2_adding_data/ch2_Adding_Data.sql
mysql -u harry -p < ch3_querying_data/ch3_querying_data.sql
mysql -u harry -p < ch4_modifying_data/ch4_modifying_data.sql
mysql -u harry -p < ch5_advanced_filtering/ch5_advanced_filtering.sql
```

Or paste the contents directly into your SQL editor and execute top to bottom.

---

## 🎯 Learning Goals

- [x] Create and manage databases
- [x] Design tables with appropriate data types and constraints
- [x] Insert records using DML (`INSERT INTO`)
- [x] Query data using `SELECT` and `WHERE`
- [x] Sort and limit results with `ORDER BY` and `LIMIT`/`OFFSET`
- [x] Use `UPDATE` and `DELETE` statements
- [x] Advanced filtering: `BETWEEN`, `IN`, `LIKE`, `IS NULL`
- [x] `DISTINCT` keyword
- [x] Alter existing tables: add/drop/rename/move columns, `RENAME TABLE`, `TRUNCATE`
- [ ] Add constraints after table creation: `UNIQUE`, `CHECK`, `DEFAULT`, `PRIMARY KEY`
- [ ] Aggregate, string, date, and math functions; `IF()`
- [ ] Transactions: `autocommit`, `COMMIT`, `ROLLBACK`
- [ ] Foreign keys and relational tables (`rooms`, `payments`)
- [ ] `JOIN` (INNER / LEFT / RIGHT) to relate multiple tables
- [ ] Self JOIN (student referrals)
- [ ] `UNION` / `UNION ALL`
- [ ] Create `VIEWS` for common reports
- [ ] Indexing for performance
- [ ] Subqueries
- [ ] `GROUP BY`, `HAVING`, `WITH ROLLUP`
- [ ] Write `STORED PROCEDURES` and `TRIGGERS`

---

## 🔭 Planned Additions

Following my SQL course chapter by chapter, in this order:

- `ch6_altering_tables/` — `ALTER TABLE` (add/drop/modify/rename/move columns), `RENAME TABLE`, `DROP TABLE`, `TRUNCATE TABLE`, `DISTINCT`
- `ch7_constraints/` — `UNIQUE`, `CHECK`, `DEFAULT`, adding `NOT NULL` and `PRIMARY KEY` after creation
- `ch8_functions/` — Aggregate, string, date, and math functions, `IF()`
- `ch9_transactions/` — `autocommit`, `COMMIT`, `ROLLBACK`
- `ch10_foreign_keys/` — New `rooms` and `payments` tables linked via `FOREIGN KEY`, `ON DELETE` behaviors
- `ch11_joins/` — INNER, LEFT, RIGHT JOIN across `students`, `rooms`, `payments`
- `ch12_self_join/` — `referred_by_id` column + self join for referrer names
- `ch13_union/` — `alumni_students` table combined with `students` via `UNION`/`UNION ALL`
- `ch14_views/` — Views such as `due_fee_students`
- `ch15_indexes/` — Single and multi-column indexes
- `ch16_subqueries/` — Scalar subqueries, subqueries with `IN`
- `ch17_group_by_having/` — `GROUP BY`, `HAVING`, `WITH ROLLUP`
- `ch18_stored_procedures/` — `AddStudent()` procedure with `IN` parameters
- `ch19_triggers/` — `student_log` table + `AFTER INSERT` trigger

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
