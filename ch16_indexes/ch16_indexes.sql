USE hostel_management;

-- Check existing indexes first

SHOW INDEXES FROM students;
SHOW INDEXES FROM rooms;
SHOW INDEXES FROM fees;
SHOW INDEXES FROM complaints;

-- Create a single-column index
CREATE INDEX idx_name ON students(Name);
SHOW INDEXES FROM students; -- verify

-- Create a multi-column index
CREATE INDEX idx_gender_age ON students(Gender, Age);

-- Prove the index is actually used
EXPLAIN SELECT * FROM students WHERE Gender = 'Female' AND Age > 20;