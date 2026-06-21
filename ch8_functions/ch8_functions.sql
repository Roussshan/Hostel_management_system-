use hostel_management;

-- ----------------------
-- using MySQL functions
-- ----------------------

-- There are many types of My SQL functions :
-- 1. Aggregrate Functions - (COUNT(), MIN(), MAX(), SUM(), AVG(), GROUP BY())

-- Using COUNT()
   SELECT COUNT(*) from students; -- helps to count total numbers of students.
   SELECT COUNT(*) from students where gender = 'female'; -- helps to count the total numbers of female.
   SELECT COUNT(*) from students where gender = 'male'; -- helps to count the total numbers of male.
   
-- Using MIN() and MAX()
   SELECT MIN(age) AS min_Age, MAX(age) AS max_salary FROM students; -- helps to get the minimum and maximum age.

-- Using AVG()
   SELECT AVG(age) FROM students; -- helps to find average of all the students age.

   
select * from students;