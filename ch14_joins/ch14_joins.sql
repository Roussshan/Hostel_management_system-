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

-- LEFT JOINS to find students with no complaints 
SELECT s.Name, c.description
FROM students s
LEFT JOIN complaints c ON s.student_id = c.student_id
WHERE c.complaint_id IS NULL;

-- Combining all the tables for final report
SELECT 
    s.Name,
    r.room_number,
    f.status AS fee_status,
    COUNT(c.complaint_id) AS open_complaints
FROM students s
JOIN rooms r ON s.room_id = r.room_id
JOIN fees f ON s.student_id = f.student_id
LEFT JOIN complaints c ON s.student_id = c.student_id AND c.status = 'Open'
GROUP BY s.student_id, s.Name, r.room_number, f.status;

-- Practicing Querys 
-- Students with Due fees AND an open complaint (problem cases)
SELECT s.Name, f.status, c.description
FROM students s
JOIN fees f ON s.student_id = f.student_id AND f.status = 'Due'
JOIN complaints c ON s.student_id = c.student_id AND c.status = 'Open';

-- Room-wise: how many students, how many open complaints
SELECT r.room_number, COUNT(DISTINCT s.student_id) AS total_students, 
       COUNT(c.complaint_id) AS open_complaints
FROM rooms r
LEFT JOIN students s ON r.room_id = s.room_id
LEFT JOIN complaints c ON s.student_id = c.student_id AND c.status = 'Open'
GROUP BY r.room_number;