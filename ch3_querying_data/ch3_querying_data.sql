use hostel_management;

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

-- use ORDER BY - which hepls in arranging the data in an order.
    SELECT * from students ORDER BY age asc;  
	SELECT * from students ORDER BY age desc;   

-- use LIMIT in the table which helps in set the limit in the output.
	SELECT * from students limit 5; -- for first 5 rows 
    SELECT * from students limit 10 offset 5; -- skip first 5 rows then get next 10.
    SELECT * from students limit 5, 10; -- gets the 10 row starting from the 6th row. 
    
-- use UPDATE in the table which hepls in updating the rows in the table.
    UPDATE students
    set fee_status = 'paid' where student_id = '2';
    
    UPDATE students
    set room_number = '111' WHERE student_id = '4';
    
    select * from students;
    