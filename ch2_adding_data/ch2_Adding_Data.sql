
use hostel_management;

-- ------------------------------------------------
-- INSERT sample student data into students table
-- Note: student_id is AUTO_INCREMENT, so we skip it
-- ------------------------------------------------
 
INSERT INTO students (Name, Age, Gender, Room_number, Fee_status)
VALUES
    ('Aarav Sharma',  19, 'Male',   101, 'Paid'),
    ('Priya Mehta',   20, 'Female', 102, 'Due'),
    ('Rohit Verma',   21, 'Male',   101, 'Paid'),
    ('Sneha Iyer',    18, 'Female', 103, 'Paid'),
    ('Karan Patel',   22, 'Male',   104, 'Due'),
    ('Anjali Singh',  19, 'Female', 102, 'Paid'),
    ('Vikram Nair',   20, 'Male',   105, 'Due'),
    ('Pooja Reddy',   21, 'Female', 103, 'Paid'),
    ('Arjun Gupta',   18, 'Male',   104, 'Paid'),
    ('Ritika Joshi',  22, 'Female', 105, 'Due');


-- Verify all data was inserted correctly
SELECT * FROM students;

-- ------------------------------------------------
-- Querying data with using 'SELECT' and 'WHERE'.
-- ------------------------------------------------

	SELECT * from students WHERE gender = 'male';
    SELECT * from students WHERE  gender != 'male';
    
    SELECT * from students WHERE age < '20';
    SELECT * from students WHERE age > '20';
    SELECT * from students WHERE age <= '20';
	SELECT * from students WHERE age >= '20';

    SELECT * from students WHERE gender = 'male' and age < '20';
    SELECT * from students WHERE gender = 'male' or age < '20';

    SELECT * from students ORDER BY age asc;
	SELECT * from students ORDER BY age desc;

	SELECT * from students limit 5; -- for first 5 rows 
    SELECT * from students limit 10 offset 5; -- skip first 5 rows then get next 10.
    SELECT * from students limit 5, 10; -- gets the 10 row starting from the 6th row. 
