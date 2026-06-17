use hostel_management;

-- modify data of the table by using UPDATE and DELETE 

-- UPDATE - helps in change the valuses in one and more rows.
-- DELETE - helps in removing the data from the table.

-- use UPDATE which helps in updateing the rows in the table.
	UPDATE students 
	set room_number = '109' , fee_status = 'due' Where student_id = '1';
    UPDATE students 
    set room_number = '101' , fee_status = 'due' Where student_id = '2';


    select * from students;