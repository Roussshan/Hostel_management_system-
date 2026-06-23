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

select * from fees; -- shows fees table 

--  Insert matching payments for "Paid" students only.

SELECT fee_id, student_id, status FROM fees WHERE status = 'Paid';
INSERT INTO payments (fee_id, amount, payment_date, payment_method) VALUES
(1, 8000, '2026-06-05', 'UPI'),
(3, 8000, '2026-06-05', 'Cash'),
(4, 8000, '2026-06-06', 'Card'),
(6, 8000, '2026-06-06', 'UPI'),
(8, 8000, '2026-06-07', 'Cash'),
(9, 8000, '2026-06-07', 'UPI'),
(11, 8000, '2026-06-08', 'Card'),
(12, 8000, '2026-06-08', 'UPI');

select * from payments; -- shows paymments table 

-- Verifing all joints Works properly.
SELECT s.Name, f.amount_due, f.status, p.amount AS amount_paid
FROM students s
JOIN fees f ON s.student_id = f.student_id
LEFT JOIN payments p ON f.fee_id = p.fee_id;
