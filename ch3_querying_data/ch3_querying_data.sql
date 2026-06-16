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

    SELECT * from students ORDER BY age asc;
	SELECT * from students ORDER BY age desc;

	SELECT * from students limit 5; -- for first 5 rows 
    SELECT * from students limit 10 offset 5; -- skip first 5 rows then get next 10.
    SELECT * from students limit 5, 10; -- gets the 10 row starting from the 6th row. 