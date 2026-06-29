USE hostel_management;

-- Basic GROUP BY: students per gender
SELECT Gender, COUNT(*) AS total_students
FROM students
GROUP BY Gender;

-- GROUP BY with AVG: average age per gender
SELECT Gender, AVG(Age) AS avg_age
FROM students
GROUP BY Gender;

-- GROUP BY on fees: total due vs total collected per status
SELECT status, SUM(amount_due) AS total_due, COUNT(*) AS fee_count
FROM fees
GROUP BY status;

-- GROUP BY with JOIN: complaints per room
SELECT r.room_number, COUNT(c.complaint_id) AS total_complaints
FROM rooms r
LEFT JOIN complaints c ON r.room_id = c.room_id
GROUP BY r.room_number;

-- HAVING: filter groups, not rows
SELECT r.room_number, COUNT(c.complaint_id) AS total_complaints
FROM rooms r
LEFT JOIN complaints c ON r.room_id = c.room_id
GROUP BY r.room_number
HAVING COUNT(c.complaint_id) > 1;

-- HAVING with AVG: referrers who referred more than 1 student
SELECT referred_by_id, COUNT(*) AS total_referred
FROM students
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*) > 1;