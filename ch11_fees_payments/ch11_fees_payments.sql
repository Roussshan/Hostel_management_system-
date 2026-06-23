USE hostel_management;
SELECT student_id, Name, Fee_status FROM students ORDER BY student_id;

-- --------------------- --
-- Create New Fees table --
-- --------------------- --

CREATE TABLE fees (
    fee_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    amount_due DECIMAL(10,2) NOT NULL,
    due_date DATE NOT NULL,
    status ENUM('Paid','Due','Partial') NOT NULL DEFAULT 'Due',
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

DESCRIBE fees;

-- ------------------------- --
-- Create New Payemnts table --
-- ------------------------- --

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    fee_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method ENUM('Cash','UPI','Card') NOT NULL,
    FOREIGN KEY (fee_id) REFERENCES fees(fee_id)
);

DESCRIBE payments;

-- Inserting fee row per student.
INSERT INTO fees (student_id, amount_due, due_date, status) VALUES
(1, 8000, '2026-06-01', 'Paid'),
(2, 8000, '2026-06-01', 'Due'),
(3, 8000, '2026-06-01', 'Paid'),
(4, 8000, '2026-06-01', 'Paid'),
(5, 8000, '2026-06-01', 'Due'),
(6, 8000, '2026-06-01', 'Paid'),
(7, 8000, '2026-06-01', 'Due'),
(8, 8000, '2026-06-01', 'Paid'),
(9, 8000, '2026-06-01', 'Paid'),
(10, 8000, '2026-06-01', 'Due'),
(11, 8000, '2026-06-01', 'Paid'),
(12, 8000, '2026-06-01', 'Paid'),
(13, 8000, '2026-06-01', 'Due');

select * from fees;