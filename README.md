# 🏨 Hostel Management System — SQL Learning Project

> A hands-on SQL project built to learn, practice, and solidify core database concepts through a real-world hostel management use case.

---

## 📌 About This Project

This repository is my personal SQL learning ground. The goal is to design and build a **Hostel Management System** database from scratch — starting with a single table, then progressively splitting it into a proper relational design with rooms, fees, payments, complaints, and referrals, as I advance through my SQL course.

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
| `ch6_altering_tables/ch6_altering_table.sql` | Chapter 6 | ALTER TABLE to add `date_of_birth`, `email` + backfilling data |
| `ch7_constraints/ch7_constraints.sql` | Chapter 7 | UNIQUE, CHECK, NOT NULL constraints |
| `ch8_functions/ch8_functions.sql` | Chapter 8 | Aggregate functions: COUNT, MIN, MAX, AVG |
| `ch9_transactions/ch9_transactions.sql` | Chapter 9 | autocommit, COMMIT, ROLLBACK |
| `ch10_rooms_relation/ch10_room_relation.sql` | Chapter 10 | New `rooms` table, FK link, dropped `Room_number` |
| `ch11_fees_payments/ch11_fees_payments.sql` | Chapter 11 | New `fees` and `payments` tables, dropped `Fee_status` |
| `ch12_complaints/ch12_complaints.sql` | Chapter 12 | New `complaints` table linked to students and rooms |
| `ch13_self_join/ch13_self_join.sql` | Chapter 13 | `referred_by_id` column + self join for referrer names |
| `ch14_joins/ch14_joins.sql` | Chapter 14 | INNER/LEFT JOIN across students, rooms, fees, complaints |

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

Inserted 10 student records using a single multi-row `INSERT` with explicit column names. *(Note: students 11–13 were added later, during Chapter 6.)*

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

**Concepts practised:** `WHERE` with `=`, `!=`, `<`, `>`, `<=`, `>=`; `AND`/`OR`; `ORDER BY`; `LIMIT`/`OFFSET`; introductory single-column `UPDATE`.

---

### ✅ Chapter 4 — Modifying Data (`ch4_modifying_data/ch4_modifying_data.sql`)

**Concepts practised:** `INSERT` with explicit PK values, multi-column `UPDATE`, `DELETE` (single row, multiple rows, all rows), difference between deleting all rows and dropping the table.

---

### ✅ Chapter 5 — Advanced Filtering (`ch5_advanced_filtering/ch5_advanced_filtering.sql`)

**Concepts practised:** `BETWEEN`, `IN`, `LIKE` (`%` wildcard — starts with, ends with, contains), `IS NULL`/`IS NOT NULL`.

---

### ✅ Chapter 6 — Altering Tables (`ch6_altering_tables/ch6_altering_table.sql`)

Extended `students` with `date_of_birth` and `email`, backfilled data for all students — 3 new students (11, 12, 13) were also added, bringing the table to 13 students total.

**Student data after Chapters 1–9 (before the room/fee split in Ch10–11):**

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

> ⚠️ Students 11–13 don't have a matching `INSERT` saved in any committed file — worth adding one near the top of `ch6_altering_table.sql` for full reproducibility.

**Concepts practised:** `ALTER TABLE ... ADD COLUMN`, backfilling with `UPDATE`.

---

### ✅ Chapter 7 — Constraints (`ch7_constraints/ch7_constraints.sql`)

**Concepts practised:** `ADD CONSTRAINT ... UNIQUE` on `email` (verified duplicate rejection), `ADD CONSTRAINT ... CHECK (age > 16)`, `MODIFY COLUMN ... NOT NULL` on `Age`.

---

### ✅ Chapter 8 — Functions (`ch8_functions/ch8_functions.sql`)

**Concepts practised:** `COUNT(*)`, `MIN()`/`MAX()`, `AVG()` on student age and gender.

---

### ✅ Chapter 9 — Transactions (`ch9_transactions/ch9_transactions.sql`)

**Concepts practised:** checking default `autocommit`, `SET autocommit = 0`, `COMMIT`, `ROLLBACK`, re-enabling `autocommit = 1`.

---

### ✅ Chapter 10 — Rooms Relation (`ch10_rooms_relation/ch10_room_relation.sql`)

Split room data out of `students` into its own `rooms` table — the first real normalization step.

**What it does:**
- Creates `rooms` (`room_id`, `room_number`, `capacity`) and inserts 8 rooms (101–105, 119, 121, 111)
- Identifies unique room numbers from `students` via `SELECT DISTINCT`
- Adds `room_id` to `students`, links each student to the correct room via `UPDATE`
- Adds `FOREIGN KEY (room_id) REFERENCES rooms(room_id)`
- Drops the now-redundant `Room_number` column
- Verifies with a `JOIN` between `students` and `rooms`

---

### ✅ Chapter 11 — Fees & Payments (`ch11_fees_payments/ch11_fees_payments.sql`)

Replaced the single `Fee_status` column with two real tables.

**What it does:**
- Creates `fees` (`fee_id`, `student_id` FK, `amount_due`, `due_date`, `status`) and `payments` (`payment_id`, `fee_id` FK, `amount`, `payment_date`, `payment_method`)
- Inserts one fee row per student (₹8000 each) and matching payment rows for the 8 "Paid" students
- Verifies with a `JOIN` + `LEFT JOIN` across `students` → `fees` → `payments`
- Drops the now-redundant `Fee_status` column
- Practice queries: total amount due, total collected, students who still owe money

---

### ✅ Chapter 12 — Complaints (`ch12_complaints/ch12_complaints.sql`)

Added an operational table with no migration needed.

**What it does:**
- Creates `complaints` (`complaint_id`, `student_id` FK, `room_id` FK, `description`, `status`, `created_at`, `resolved_at`)
- Inserts 8 sample complaints (mix of Open/Resolved) and sets `resolved_at` for resolved ones
- 3-table `JOIN`: complaints → students → rooms
- Practice queries: rooms with multiple complaints (`GROUP BY` + `HAVING`), average resolution time (`TIMESTAMPDIFF`), open complaints with student contact info

---

### ✅ Chapter 13 — Self Join (`ch13_self_join/ch13_self_join.sql`)

Modeled student referrals within the same table.

**What it does:**
- Adds `referred_by_id` to `students` with a self-referencing `FOREIGN KEY`
- Populates a few referral relationships (e.g. Aarav referred Priya and Rohit)
- `LEFT JOIN` of `students` to itself to show each student alongside their referrer's name (LEFT JOIN keeps non-referred students visible)
- Practice queries: referral count per referrer, students never referred by anyone

---

### ✅ Chapter 14 — Joins (`ch14_joins/ch14_joins.sql`)

Brought together every table built so far into combined multi-table queries.

**What it does:**
- 2-table joins: students+rooms, students+fees
- `INNER JOIN` across 3 tables (students, rooms, fees)
- `LEFT JOIN` to find students with **no** complaints
- A combined "dashboard" query: per-student room, fee status, and count of open complaints
- Practice queries: students with Due fees **and** an open complaint, room-wise student/complaint counts

---

## 🧱 Database Design Overview (current state, after Ch14)

### `students`

| Column | Data Type | Constraints |
|--------|-----------|-------------|
| `student_id` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `Name` | VARCHAR(100) | NOT NULL |
| `Age` | INT | NOT NULL |
| `Gender` | ENUM | — |
| `room_id` | INT | FK → `rooms.room_id` |
| `date_of_birth` | DATE | — |
| `email` | VARCHAR(100) | UNIQUE |
| `referred_by_id` | INT | FK → `students.student_id` (self-referencing) |

### `rooms`
`room_id` (PK), `room_number`, `capacity`

### `fees`
`fee_id` (PK), `student_id` (FK), `amount_due`, `due_date`, `status`

### `payments`
`payment_id` (PK), `fee_id` (FK), `amount`, `payment_date`, `payment_method`

### `complaints`
`complaint_id` (PK), `student_id` (FK), `room_id` (FK), `description`, `status`, `created_at`, `resolved_at`

---

## 🚀 How to Run

Run the chapters **in order** — each one builds on data/structure created by the previous one.

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
mysql -u harry -p < ch11_fees_payments/ch11_fees_payments.sql
mysql -u harry -p < ch12_complaints/ch12_complaints.sql
mysql -u harry -p < ch13_self_join/ch13_self_join.sql
mysql -u harry -p < ch14_joins/ch14_joins.sql
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
- [x] Foreign keys and relational tables (`rooms`, `fees`, `payments`, `complaints`)
- [x] `JOIN` (INNER / LEFT) across multiple tables
- [x] Self JOIN (student referrals)
- [ ] **Views** — *next up*
- [ ] String, date, and math functions; `IF()`
- [ ] `UNION` / `UNION ALL`
- [ ] Indexing for performance
- [ ] Subqueries
- [ ] `GROUP BY`, `HAVING`, `WITH ROLLUP` (beyond the basic versions used in Ch12)
- [ ] Write `STORED PROCEDURES` and `TRIGGERS`
- [ ] `wardens` table

---

## 🔭 Planned Additions

- `ch15_views/` — *(next)* Views for outstanding dues, room occupancy, and open complaints reports
- `ch16_indexes/` — Single and multi-column indexes
- `ch17_subqueries/` — Scalar subqueries, subqueries with `IN`
- `ch18_group_by_having/` — `GROUP BY`, `HAVING`, `WITH ROLLUP`
- `ch19_stored_procedures/` — `AddStudent()`, `AllocateRoom()` procedures with `IN` parameters
- `ch20_triggers/` — Auto-logging and auto-updating triggers (e.g. on payment insert)
- `ch21_union/` — `alumni_students` table combined with `students` via `UNION`/`UNION ALL`
- `wardens` table + linking to `rooms`

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
