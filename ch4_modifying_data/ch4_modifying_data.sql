use hostel_management;

-- modify data of the table by using UPDATE and DELETE 

-- UPDATE - helps in change the valuses in one and more rows.
-- DELETE - helps in removing the data from the table.

-- Again inserting some data into table.
   INSERT into students (student_id, name, age, gender, room_number, fee_status) values 
   ('5','kunal', '21', 'male', '119', 'paid'),
   ('11','sneha', '23', 'female', '121', 'paid'),
   ('12','pooja', '20', 'female', '001', 'due');

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
    
    select * from students;  
