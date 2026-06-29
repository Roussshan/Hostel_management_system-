USE hostel_management;

SELECT Gender, COUNT(*) AS total_students
FROM students
GROUP BY Gender;