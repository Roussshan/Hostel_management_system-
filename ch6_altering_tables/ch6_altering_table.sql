use hostel_management;

-- --------------------------------------------
-- Using ALTER TABLE to add some more columns.
-- --------------------------------------------

-- Add new columns
   ALTER TABLE students add column date_of_birth date;
   ALTER TABLE students add column email varchar(100);
   
-- updating values to the column 
   UPDATE students set date_of_birth ='1987-12-04', email= 'aarav@gmail.com' where student_id=1;
   UPDATE students set date_of_birth ='1998-10-24', email= 'priya@gmail.com' where student_id=2;
   UPDATE students set date_of_birth ='1997-01-09', email= 'rohit@gmail.com' where student_id=3;
   UPDATE students set date_of_birth ='2007-07-05', email= 'sneha@gmail.com' where student_id=4;
   UPDATE students set date_of_birth ='1964-09-07', email= 'kunal@gmial.com' where student_id=5;
   UPDATE students set date_of_birth ='2004-04-11', email= 'anjali@gmail.com' where student_id=6;
   UPDATE students set date_of_birth ='1988-10-14', email= 'vikram@gmail.com' where student_id=7;
   UPDATE students set date_of_birth ='1989-11-12', email= 'pooja@gmail.com' where student_id=8;
   UPDATE students set date_of_birth ='2001-09-16', email= 'arun@gmail.com' where student_id=9;
   UPDATE students set date_of_birth ='2007-06-30', email= 'ritika@gmail.com' where student_id=10;
   UPDATE students set date_of_birth ='2003-08-25', email= 'snneha@gmail.com' where student_id=11;
   UPDATE students set date_of_birth ='3004-07-12', email= 'poo@gmail.com' where student_id=12;
   
   
   select * from students;
   