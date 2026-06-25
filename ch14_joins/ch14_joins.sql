USE hostel_management;

-- 2-table joins already done individually
-- Students with their room
SELECT s.Name, r.room_number
FROM students s
JOIN rooms r ON s.room_id = r.room_id;

-- Students with their fee status
SELECT s.Name, f.amount_due, f.status
FROM students s
JOIN fees f ON s.student_id = f.student_id;

-- INNER JOIN Across 3 tables
SELECT s.Name, r.room_number, f.status AS fee_status
FROM students s
INNER JOIN rooms r ON s.room_id = r.room_id
INNER JOIN fees f ON s.student_id = f.student_id;