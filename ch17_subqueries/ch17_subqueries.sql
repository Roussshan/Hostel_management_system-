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