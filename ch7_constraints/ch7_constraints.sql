use hostel_management;
describe students;

-- --------------------------------------------
-- Adding constraints to the existing columns.
-- --------------------------------------------

-- Add constraint
   ALTER TABLE students 
   add constraint unique_email unique (email); 

-- verifying 
   update students 
   set email = 'aarav@gmail.com' where student_id = '2';
   -- ok its working.

select * from students;
