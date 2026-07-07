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
| `ch15_views/ch15_views.sql` | Chapter 15 | Views for dues, room occupancy, and open complaints |
| `ch16_indexes/ch16_indexes.sql` | Chapter 16 | Single, multi-column, and foreign-key indexes |
| `ch17_subqueries/ch17_subqueries.sql` | Chapter 17 | Scalar subqueries, `IN`/`NOT IN`, subquery in `SELECT`, subquery in `FROM` (derived tables) |
| `ch18_group_by_having/ch18_group_by_having.sql` | Chapter 18 | `GROUP BY`, `HAVING`, `WITH ROLLUP` |

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

**Concepts practised:** `ALTER TABLE ... ADD COLUMN` (`date_of_birth`, `email`), backfilling existing and newly inserted rows with real values.

---

### ✅ Chapter 7 — Constraints (`ch7_constraints/ch7_constraints.sql`)

**Concepts practised:** Adding `UNIQUE` (on `email`), `CHECK` (age range), and `NOT NULL` constraints to an already-populated table via `ALTER TABLE`.

---

### ✅ Chapter 8 — Functions (`ch8_functions/ch8_functions.sql`)

**Concepts practised:** Aggregate functions — `COUNT`, `MIN`, `MAX`, `AVG` — applied to student data.

---

### ✅ Chapter 9 — Transactions (`ch9_transactions/ch9_transactions.sql`)

**Concepts practised:** `autocommit`, explicit `START TRANSACTION`, `COMMIT`, and `ROLLBACK` to test undoing changes safely.

---

### ✅ Chapter 10 — Rooms Relation (`ch10_rooms_relation/ch10_room_relation.sql`)

Introduced a proper `rooms` table and linked it to `students` via a foreign key, replacing the old `Room_number` column.

**Concepts practised:** `CREATE TABLE` with `FOREIGN KEY`, `ALTER TABLE ... DROP COLUMN`, populating a lookup/relation table.

---

### ✅ Chapter 11 — Fees & Payments (`ch11_fees_payments/ch11_fees_payments.sql`)

Split billing out of `students` into dedicated `fees` and `payments` tables, dropping the old `Fee_status` column.

**Concepts practised:** One-to-many relational design, `FOREIGN KEY` references, `ENUM` status columns, multi-table `INSERT`.

---

### ✅ Chapter 12 — Complaints (`ch12_complaints/ch12_complaints.sql`)

Added a `complaints` table referencing both `students` and `rooms`.

**Concepts practised:** Multiple foreign keys in one table, `status`/`created_at`/`resolved_at` tracking columns, basic `GROUP BY` used for a quick complaints-per-room check.

---

### ✅ Chapter 13 — Self Join (`ch13_self_join/ch13_self_join.sql`)

Added a `referred_by_id` column on `students` (a self-referencing foreign key) and used a self join to pull each student's referrer's name.

**Concepts practised:** Self-referencing `FOREIGN KEY`, `SELF JOIN` with table aliases.

---

### ✅ Chapter 14 — Joins (`ch14_joins/ch14_joins.sql`)

**Concepts practised:** `INNER JOIN` and `LEFT JOIN` across `students`, `rooms`, `fees`, and `complaints` to answer real multi-table questions (e.g. who owes fees and what room they're in).

---

### ✅ Chapter 15 — Views (`ch15_views/ch15_views.sql`)

Created reusable views for common reports.

**Concepts practised:** `CREATE VIEW`, querying a view like a table, confirming views stay in sync with live underlying data.

---

### ✅ Chapter 16 — Indexes (`ch16_indexes/ch16_indexes.sql`)

**Concepts practised:** Single-column and multi-column `INDEX`es, indexes on foreign-key columns, verifying index usage with `EXPLAIN`.

---

### ✅ Chapter 17 — Subqueries (`ch17_subqueries/ch17_subqueries.sql`)

**Concepts practised:** Scalar subqueries in `WHERE` (e.g. students older than the average age), `IN`/`NOT IN` subqueries (students with/without open complaints), subqueries comparing against aggregates (fees above average), a correlated scalar subquery inside `SELECT` (roommate count per student), and subqueries in `FROM` as derived tables (rooms with more than one occupant).

---

### ✅ Chapter 18 — Group By & Having (`ch18_group_by_having/ch18_group_by_having.sql`)

**Concepts practised:** `GROUP BY` on a single column (students per gender), `GROUP BY` combined with `AVG`/`SUM`/`COUNT`, `GROUP BY` across a `JOIN` (complaints per room), `HAVING` to filter aggregated groups (rooms with more than one complaint, referrers who referred more than one student), `WITH ROLLUP` for grand totals, and combining `GROUP BY` + `HAVING` + `ORDER BY` in one query.

---

## 🧩 Current Schema Snapshot

### `students`
`student_id` (PK), `Name`, `Age`, `Gender`, `date_of_birth`, `email` (UNIQUE), `referred_by_id` (self FK), `room_id` (FK, indexed)

### `rooms`
`room_id` (PK), `room_number`, capacity/occupancy-related columns

### `fees`
`fee_id` (PK), `student_id` (FK, indexed), `amount_due`, `due_date`, `status`

### `payments`
`payment_id` (PK), `fee_id` (FK), `amount`, `payment_date`, `payment_method`

### `complaints`
`complaint_id` (PK), `student_id` (FK, indexed), `room_id` (FK, indexed), `description`, `status`, `created_at`, `resolved_at`

### Views
`student_outstanding_dues`, `current_room_occupancy`, `open_complaints_report`

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
mysql -u harry -p < ch15_views/ch15_views.sql
mysql -u harry -p < ch16_indexes/ch16_indexes.sql
mysql -u harry -p < ch17_subqueries/ch17_subqueries.sql
mysql -u harry -p < ch18_group_by_having/ch18_group_by_having.sql
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
- [x] Create `VIEWS` for common reports, and prove they reflect live data
- [x] Indexing — single-column, multi-column, and foreign-key indexes; verifying usage with `EXPLAIN`
- [x] Subqueries — scalar, `IN`/`NOT IN`, subquery in `SELECT`, subquery in `FROM` (derived tables)
- [x] `GROUP BY`, `HAVING`, `WITH ROLLUP`
- [ ] String, date, and math functions; `IF()` — *next up*
- [ ] `UNION` / `UNION ALL`
- [ ] Write `STORED PROCEDURES` and `TRIGGERS`
- [ ] `wardens` table

---

## 🔭 Planned Additions

- `ch19_string_date_math_functions/` — *(next)* String, date, and math functions; `IF()`
- `ch20_union/` — `alumni_students` table combined with `students` via `UNION`/`UNION ALL`
- `ch21_stored_procedures/` — `AddStudent()`, `AllocateRoom()` procedures with `IN` parameters
- `ch22_triggers/` — Auto-logging and auto-updating triggers (e.g. on payment insert)
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
