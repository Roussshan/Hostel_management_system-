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

SELECT DISTINCT Room_number FROM students; -- shows you the unique room numbers currently sitting inside your students table

-- Adding those room to new room table.
   INSERT INTO rooms (room_number, capacity) VALUES (101, 2);
   INSERT INTO rooms (room_number, capacity) VALUES (102, 2); 
   INSERT INTO rooms (room_number, capacity) VALUES (103, 2);
   INSERT INTO rooms (room_number, capacity) VALUES (104, 2);
   INSERT INTO rooms (room_number, capacity) VALUES (105, 2);
   INSERT INTO rooms (room_number, capacity) VALUES (119, 3);
   INSERT INTO rooms (room_number, capacity) VALUES (121, 3);
   INSERT INTO rooms (room_number, capacity) VALUES (111, 3);