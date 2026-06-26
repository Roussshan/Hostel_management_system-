USE hostel_management;

-- create reusable "saved queries" for common hostel reports

-- Viewing Raw Query
SELECT 
    s.student_id,
    s.Name,
    f.amount_due,
    COALESCE(SUM(p.amount), 0) AS amount_paid,
    f.amount_due - COALESCE(SUM(p.amount), 0) AS balance
FROM students s
JOIN fees f ON s.student_id = f.student_id
LEFT JOIN payments p ON f.fee_id = p.fee_id
GROUP BY s.student_id, s.Name, f.amount_due;

-- turn it into View
CREATE VIEW student_outstanding_dues AS
SELECT 
    s.student_id,
    s.Name,
    f.amount_due,
    COALESCE(SUM(p.amount), 0) AS amount_paid,
    f.amount_due - COALESCE(SUM(p.amount), 0) AS balance
FROM students s
JOIN fees f ON s.student_id = f.student_id
LEFT JOIN payments p ON f.fee_id = p.fee_id
GROUP BY s.student_id, s.Name, f.amount_due;


-- Second view: Room occupancy
SELECT 
    r.room_number,
    r.capacity,
    COUNT(s.student_id) AS current_occupants
FROM rooms r
LEFT JOIN students s ON r.room_id = s.room_id
GROUP BY r.room_number, r.capacity;

-- Then save it as a view 
CREATE VIEW current_room_occupancy AS
SELECT 
    r.room_number,
    r.capacity,
    COUNT(s.student_id) AS current_occupants
FROM rooms r
LEFT JOIN students s ON r.room_id = s.room_id
GROUP BY r.room_number, r.capacity;

-- Ouery it 
SELECT * FROM current_room_occupancy;