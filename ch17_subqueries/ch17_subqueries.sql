USE hostel_management;

-- Scalar subquery: students older than average age
SELECT student_id, Name, Age
FROM students
WHERE Age > (
    SELECT AVG(Age) FROM students
);

-- Check the average first separately so you can sanity-check the result
SELECT AVG(Age) FROM students;

-- Subquery with IN: students who have an open complaint
SELECT Name, Age
FROM students
WHERE student_id IN (
    SELECT student_id FROM complaints WHERE status = 'Open'
);

-- Subquery with NOT IN: students who have never complained
SELECT Name
FROM students
WHERE student_id NOT IN (
    SELECT student_id FROM complaints
);

-- Subquery in WHERE comparing against fees
SELECT s.Name, f.amount_due
FROM students s
JOIN fees f ON s.student_id = f.student_id
WHERE f.amount_due > (
    SELECT AVG(amount_due) FROM fees
);

-- Scalar subquery inside SELECT
SELECT 
    s.Name,
    r.room_number,
    (SELECT COUNT(*) FROM students WHERE room_id = s.room_id) AS roommates_count
FROM students s
JOIN rooms r ON s.room_id = r.room_id;

-- Subquery in FROM (derived table)
SELECT room_id, total_students
FROM (
    SELECT room_id, COUNT(*) AS total_students
    FROM students
    GROUP BY room_id
) AS room_counts
WHERE total_students > 1;