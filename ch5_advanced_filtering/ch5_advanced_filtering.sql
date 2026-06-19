use hostel_management;

-- ------------------------------------------------------------------
-- Run BETWEEN, IN, LIKE, IS NULL on your existing students table. 
-- ------------------------------------------------------------------

-- BETWEEN 
     select * from students where age between '19' and '21';
     select * from students where age between '21' and '23';
     
     select * from students where room_number between '105' and '110';
     select * from students where room_number between '110' and '120';
     
-- IN 
     select * from students where gender in ('male','other');
     select * from students where gender in ('female','other');
	 select * from students where gender in ('male','female');
     
-- LIKE (Pattern Matching)
     select * from students where name like 'A%'; -- Starts with 'A'.
     select * from students where name like 'R%'; -- starts with 'R'.
     select * from students where name like 'S%'; -- starts with 'S'.
     
     select * from students where name like '%A'; -- Ends with 'A'.
     select * from students where name like '%S'; -- Ends with 'S'.
	 select * from students where name like '%R'; -- Ends with 'R'.
     
     select * from students where name like '%li%'; -- contains 'li'.
     select * from students where name like '%ai%'; -- contains 'ai'.
     select * from students where name like '%na%'; -- contains 'na'.

     select * from students;

