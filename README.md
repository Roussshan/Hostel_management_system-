# 🏨 Hostel Management System — SQL Learning Project

> A hands-on SQL project built to learn, practice, and solidify core database concepts through a real-world hostel management use case.

---

## 📌 About This Project

This repository is my personal SQL learning ground. The goal is to design and build a **Hostel Management System** database from scratch — starting with a single table, then progressively splitting it into a proper relational design with rooms, fees, and more, as I advance through my SQL course.

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
| `ch6_altering_tables/ch6_altering_table.sql` | Chapter 6 | ALTER TABLE to add new columns (`date_of_birth`, `email`) + backfilling data |
| `ch7_constraints/ch7_constraints.sql` | Chapter 7 | UNIQUE, CHECK, NOT NULL constraints |
| `ch8_functions/ch8_functions.sql` | Chapter 8 | Aggregate functions: COUNT, MIN, MAX, AVG |
| `ch9_transactions/ch9_transactions.sql` | Chapter 9 | autocommit, COMMIT, ROLLBACK |
| `ch10_rooms_relation/ch10_room_relation.sql` | Chapter 10 *(in progress)* | Splitting room data into a separate `rooms` table |

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

Inserted 10 student records using a single multi-row `INSERT` with explicit column names. *(Note: students 11–13 were added later, during Chapter 6 — see that section below.)*

| student_id | Name | Age | Gender | Fee_status |
|---|---|---|---|---|
| 1 | Aarav Sharma | 19 | Male | Paid |
| 2 | Priya Mehta | 20 | Female | Due |
| 3 | Rohit Verma | 21 | Male | Paid |
| 4 | Sneha Iyer | 18 | Female | Paid |
| 5 | Karan Patel | 22 | Male | Due |
| 6 | Anjali Singh | 19 | Female | Paid |
| 7 | Vikram Nair | 20 | Male | Due |
| 8 | Pooja Reddy | 21 | Female | Paid |
| 9 | Arjun Gupta | 18 | Male | Paid |
| 10 | Ritika Joshi | 22 | Female | Due |

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

### ✅ Chapter 6 — Altering Tables (`ch6_altering_tables/ch6_altering_table.sql`)

Extended the `students` table with two new columns and backfilled real data for every existing student — plus 3 new students were added during this chapter, bringing the table to 13 students total.

**Current full student data (after Chapters 1–9):**

| student_id | Name | Age | Gender | Fee_status | email |
|---|---|---|---|---|---|
| 1 | Aarav Sharma | 23 | Male | Paid | aarav@gmail.com |
| 2 | Priya Mehta | 20 | Female | Due | priya@gmail.com |
| 3 | Rohit Verma | 21 | Male | Paid | rohit@gmail.com |
| 4 | Sneha Iyer | 18 | Female | Paid | sneha@gmail.com |
| 5 | Karan Patel | 22 | Male | Due | karan@gmial.com |
| 6 | Anjali Singh | 19 | Female | Paid | anjali@gmail.com |
| 7 | Vikram Nair | 20 | Male | Due | vikram@gmail.com |
| 8 | Pooja Reddy | 21 | Female | Paid | pooja@gmail.com |
| 9 | Arjun Gupta | 18 | Male | Paid | arun@gmail.com |
| 10 | Ritika Joshi | 22 | Female | Due | ritika@gmail.com |
| 11 | kunal Kumar | 21 | Male | Paid | kunal@gmail.com |
| 12 | sneha Bansal | 23 | Female | Paid | snneha@gmail.com |
| 13 | pooja singh | 20 | Female | Due | poo@gmail.com |

> ⚠️ Students 11–13 don't have a matching `INSERT` statement saved in any committed file — they were likely added directly in Workbench. Worth adding a short `INSERT INTO students (...) VALUES (...)` block for them at the top of `ch6_altering_table.sql` so the chapter is fully reproducible from scratch.

**Concepts practised:**
- `ALTER TABLE ... ADD COLUMN` to add `date_of_birth` (DATE) and `email` (VARCHAR)
- Backfilling new columns row-by-row with `UPDATE`
- Updating an existing column (`Room_number`) for a specific student

---

### ✅ Chapter 7 — Constraints (`ch7_constraints/ch7_constraints.sql`)

Practised locking down data quality on the `email` and `Age` columns.

**Concepts practised:**
- `ADD CONSTRAINT ... UNIQUE` on `email`, then verified it rejects duplicate emails
- `ADD CONSTRAINT ... CHECK (age > 16)`, then verified it rejects underage entries
- `MODIFY COLUMN ... NOT NULL` on `Age`, then verified it rejects a missing age

---

### ✅ Chapter 8 — Functions (`ch8_functions/ch8_functions.sql`)

Practised aggregate functions on the `students` table.

**Concepts practised:**
- `COUNT(*)` — total students, and filtered counts by gender
- `MIN()` / `MAX()` — youngest and oldest student age
- `AVG()` — average student age

---

### ✅ Chapter 9 — Transactions (`ch9_transactions/ch9_transactions.sql`)

Practised controlling when changes are actually saved to the database.

**Concepts practised:**
- Checking the default `autocommit` state
- `SET autocommit = 0` to take manual control
- `COMMIT` to save a change permanently
- `ROLLBACK` to undo a change before it's saved
- Re-enabling `autocommit = 1`

---

### 🔧 Chapter 10 — Rooms Relation (`ch10_rooms_relation/ch10_room_relation.sql`) — *in progress*

Started splitting room data out of `students` into its own `rooms` table — the first step toward a proper relational schema.

**Done so far:**
- Created a new `rooms` table (`room_id`, `room_number`, `capacity`)
- Identified unique room numbers from `students` using `SELECT DISTINCT`
- Inserted matching rows into `rooms`
- Added a new `room_id` column to `students`
- Linked each student to their correct `room_id` via `UPDATE`

**Still to do:**
- Add a `FOREIGN KEY` constraint linking `students.room_id` → `rooms.room_id`
- Drop the now-redundant `Room_number` column from `students`
- Run a `JOIN` between `students` and `rooms` to confirm the relationship works end to end

---

## 🧱 Database Design Overview

### Entity: `students` (current state, mid-refactor)

| Column | Data Type | Constraints | Description |
|--------|-----------|-------------|-------------|
| `student_id` | INT | PRIMARY KEY, AUTO_INCREMENT | Unique identifier for each student |
| `Name` | VARCHAR(100) | NOT NULL | Full name of the student |
| `Age` | INT | NOT NULL | Age of the student |
| `Gender` | ENUM | — | Male / Female / Other |
| `Room_number` | INT | NOT NULL | *(to be removed once ch10 is finished)* |
| `room_id` | INT | *(FK pending)* | Links to `rooms.room_id` |
| `Fee_status` | ENUM | NOT NULL | Whether fee is Paid or Due |
| `date_of_birth` | DATE | — | Added in Chapter 6 |
| `email` | VARCHAR(100) | UNIQUE | Added in Chapter 6, constrained in Chapter 7 |

### Entity: `rooms` (new in Chapter 10)

| Column | Data Type | Constraints | Description |
|--------|-----------|-------------|-------------|
| `room_id` | INT | PRIMARY KEY, AUTO_INCREMENT | Unique identifier for each room |
| `room_number` | INT | — | The physical room number |
| `capacity` | INT | — | How many students the room can hold |

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
mysql -u harry -p < ch6_altering_tables/ch6_altering_table.sql
mysql -u harry -p < ch7_constraints/ch7_constraints.sql
mysql -u harry -p < ch8_functions/ch8_functions.sql
mysql -u harry -p < ch9_transactions/ch9_transactions.sql
mysql -u harry -p < ch10_rooms_relation/ch10_room_relation.sql
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
- [x] Advanced filtering: `BETWEEN`, `IN`, `LIKE`, `IS NULL`, `DISTINCT`
- [x] Alter existing tables: add columns, backfill data
- [x] Add constraints after table creation: `UNIQUE`, `CHECK`, `NOT NULL`
- [x] Aggregate functions: `COUNT`, `MIN`, `MAX`, `AVG`
- [x] Transactions: `autocommit`, `COMMIT`, `ROLLBACK`
- [ ] String, date, and math functions; `IF()`
- [ ] Finish foreign key relationship for `rooms` (FK constraint + JOIN)
- [ ] `fees` and `payments` tables
- [ ] `JOIN` (INNER / LEFT / RIGHT) across multiple tables
- [ ] Self JOIN (student referrals)
- [ ] `UNION` / `UNION ALL`
- [ ] Create `VIEWS` for common reports
- [ ] Indexing for performance
- [ ] Subqueries
- [ ] `GROUP BY`, `HAVING`, `WITH ROLLUP`
- [ ] Write `STORED PROCEDURES` and `TRIGGERS`
- [ ] `wardens` and `complaints` tables

---

## 🔭 Planned Additions

Following my SQL course chapter by chapter:

- `ch10_rooms_relation/` — *(finish)* add FK constraint, drop `Room_number`, verify with JOIN
- `ch11_fees_payments/` — New `fees` and `payments` tables, replacing the `Fee_status` column
- `ch12_complaints/` — New `complaints` table linked to `students` and `rooms`
- `ch13_self_join/` — `referred_by_id` column + self join for referrer names
- `ch14_joins/` — INNER, LEFT, RIGHT JOIN across `students`, `rooms`, `fees`, `complaints`
- `ch15_union/` — `alumni_students` table combined with `students` via `UNION`/`UNION ALL`
- `ch16_views/` — Views such as `student_outstanding_dues`, `current_room_occupancy`
- `ch17_indexes/` — Single and multi-column indexes
- `ch18_subqueries/` — Scalar subqueries, subqueries with `IN`
- `ch19_group_by_having/` — `GROUP BY`, `HAVING`, `WITH ROLLUP`
- `ch20_stored_procedures/` — `AddStudent()`, `AllocateRoom()` procedures with `IN` parameters
- `ch21_triggers/` — Auto-logging and auto-updating triggers (e.g. on payment insert)

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
