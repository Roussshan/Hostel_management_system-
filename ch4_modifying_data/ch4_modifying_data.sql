use hostel_management;

-- modify data of the table by using UPDATE and DELETE 

-- UPDATE - helps in change the valuses in one and more rows.
-- DELETE - helps in removing the data from the table.

-- use UPDATE which helps in updateing the rows in the table.
	UPDATE students 
	set room_number = '109' , fee_status = 'due' Where student_id = '1';
    UPDATE students 
    set room_number = '101' , fee_status = 'due' Where student_id = '2';
	UPDATE students 
    set room_number = '104' Where student_id = '3';

-- use DELETE which helps in deleating thef row/data from the table.
    DELETE from students -- delete one row.
    where student_id = '5';
    DELETE from students -- delete multiple rows.
    where gender = 'other';
    
-- use 'TRUNCATE' which helps in delete all rows but keep the table structure.
    DELETE from students; -- this will delete all rows but keeps the table structure.
    
    select * from students;  
