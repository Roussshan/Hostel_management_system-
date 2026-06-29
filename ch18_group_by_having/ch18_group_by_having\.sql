USE hostel_management;

-- Basic GROUP BY: students per gender
SELECT Gender, COUNT(*) AS total_students
FROM students
GROUP BY Gender;

-- GROUP BY with AVG: average age per gender
SELECT Gender, AVG(Age) AS avg_age
FROM students
GROUP BY Gender;

-- GROUP BY on fees: total due vs total collected per status
SELECT status, SUM(amount_due) AS total_due, COUNT(*) AS fee_count
FROM fees
GROUP BY status;