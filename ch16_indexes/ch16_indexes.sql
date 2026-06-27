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

-- Index your foreign key columns
CREATE INDEX idx_fees_student ON fees(student_id);
CREATE INDEX idx_complaints_room ON complaints(room_id);
CREATE INDEX idx_complaints_student ON complaints(student_id);

-- Drop one for practice
DROP INDEX idx_name ON students;
SHOW INDEXES FROM students; -- confirm it's gone
