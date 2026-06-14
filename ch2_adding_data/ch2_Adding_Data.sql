
use hostel_management;

-- INSERT sample student data into students table
-- Note: student_id is AUTO_INCREMENT, so we skip it
-- ------------------------------------------------
 
INSERT INTO students (Name, Age, Gender, Room_number, Fee_status)
VALUES
    ('Aarav Sharma',  19, 'Male',   101, 'Paid'),
    ('Priya Mehta',   20, 'Female', 102, 'Due'),
    ('Rohit Verma',   21, 'Male',   101, 'Paid'),
    ('Sneha Iyer',    18, 'Female', 103, 'Paid'),
    ('Karan Patel',   22, 'Male',   104, 'Due'),
    ('Anjali Singh',  19, 'Female', 102, 'Paid'),
    ('Vikram Nair',   20, 'Male',   105, 'Due'),
    ('Pooja Reddy',   21, 'Female', 103, 'Paid'),
    ('Arjun Gupta',   18, 'Male',   104, 'Paid'),
    ('Ritika Joshi',  22, 'Female', 105, 'Due');


-- Verify all data was inserted correctly
SELECT * FROM students;


