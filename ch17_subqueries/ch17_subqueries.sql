USE hostel_management;

SELECT student_id, Name, Age
FROM students
WHERE Age > (
    SELECT AVG(Age) FROM students
);