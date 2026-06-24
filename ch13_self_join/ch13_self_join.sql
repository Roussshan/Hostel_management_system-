use hostel_management;

-- Adding new referral column in students table.
ALTER TABLE students ADD COLUMN referred_by_id INT;
ALTER TABLE students ADD CONSTRAINT fk_referrer FOREIGN KEY (referred_by_id) REFERENCES students(student_id);

DESCRIBE students;