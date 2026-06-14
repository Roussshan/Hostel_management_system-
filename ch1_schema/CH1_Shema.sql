-- create a Database 
CREATE DATABASE hostel_management;

-- Use Database 
USE hostel_management;

-- Create a table 
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender ENUM ('Male', 'Female', 'Other'),
    Room_number INT NOT NULL,
    Fee_status ENUM ('Paid', 'Due') NOT NULL
);
