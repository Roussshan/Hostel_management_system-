use hostel_management;

-- ----------------------- --
-- creating new room table --
-- ----------------------- --

CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number INT,
    capacity INT
);

select * from rooms; -- shows the room table 
select * from students; -- shows the students table

SELECT DISTINCT Room_number FROM students; -- shows you the unique room numbers currently sitting inside your students table.

-- Adding those room to new room table.
   INSERT INTO rooms (room_number, capacity) VALUES (101, 2);
   INSERT INTO rooms (room_number, capacity) VALUES (102, 2); 
   INSERT INTO rooms (room_number, capacity) VALUES (103, 2);
   INSERT INTO rooms (room_number, capacity) VALUES (104, 2);
   INSERT INTO rooms (room_number, capacity) VALUES (105, 2);
   INSERT INTO rooms (room_number, capacity) VALUES (119, 3);
   INSERT INTO rooms (room_number, capacity) VALUES (121, 3);
   INSERT INTO rooms (room_number, capacity) VALUES (111, 3);
   
-- Connecting students to rooms
   ALTER TABLE students ADD COLUMN room_id INT;
   
-- Feel the New column student by student
   UPDATE students SET room_id = 1 WHERE Room_number = 101;
   UPDATE students SET room_id = 2 WHERE Room_number = 102;
   UPDATE students SET room_id = 3 WHERE Room_number = 103;
   UPDATE students SET room_id = 4 WHERE Room_number = 104;
   UPDATE students SET room_id = 5 WHERE Room_number = 105;
   UPDATE students SET room_id = 6 WHERE Room_number = 119;
   UPDATE students SET room_id = 7 WHERE Room_number = 121;
   UPDATE students SET room_id = 8 WHERE Room_number = 111;
   
   SELECT student_id, Name, Room_number, room_id FROM students; -- shows both the old Room_number and the new room_id side by side, matching correctly.