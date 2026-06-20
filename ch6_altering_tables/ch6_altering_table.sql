use hostel_management;

-- --------------------------------------------
-- Using ALTER TABLE to add some more columns.
-- --------------------------------------------

   ALTER TABLE students add column date_of_birth date;
   ALTER TABLE students add column email varchar(100);
   
   select * from students;
   