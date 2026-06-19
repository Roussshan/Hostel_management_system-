use hostel_management;

-- ------------------------------------------------------------------
-- Run BETWEEN, IN, LIKE, IS NULL on your existing students table. 
-- ------------------------------------------------------------------

-- BETWEEN 
     select * from students where age between '19' and '21';
     select * from students where age between '21' and '23';
     
     select * from students where room_number between '105' and '110';
     select * from students where room_number between '110' and '120';
     

     select * from students;

