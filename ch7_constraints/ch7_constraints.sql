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
   -- should fail with "Duplicate entry"
   
   ALTER TABLE students
   add constraint chk_age check (age > 16);
   -- verifing
   INSERT INTO students (Name, Age, Gender, Room_number, Fee_status, email)
   VALUES ('Young Test', 10, 'Male', 101, 'Due', 'young@example.com');
   -- should fail the CHECK
   
   ALTER TABLE students
   MODIFY COLUMN Age INT NOT NULL;
   INSERT INTO students (Name, Gender, Room_number, Fee_status, email)
   VALUES ('No Age Test', 'Male', 103, 'Due', 'noage@example.com');
   -- should fail since Age is missing and now NOT NULL

select * from students;
