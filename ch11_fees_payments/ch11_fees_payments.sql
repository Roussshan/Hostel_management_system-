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
