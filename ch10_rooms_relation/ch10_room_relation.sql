use hostel_management;

-- creating new room table --

CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number INT,
    capacity INT
);

select * from rooms; -- shows the room table 