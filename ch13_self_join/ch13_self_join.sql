use hostel_management;

-- Adding new referral column in students table.
ALTER TABLE students ADD COLUMN referred_by_id INT;
ALTER TABLE students ADD CONSTRAINT fk_referrer FOREIGN KEY (referred_by_id) REFERENCES students(student_id);

DESCRIBE students;

-- creating referral relationships between students. 
UPDATE students SET referred_by_id = 1 WHERE student_id IN (2, 3);   -- Aarav referred Priya and Rohit
UPDATE students SET referred_by_id = 2 WHERE student_id = 4;          -- Priya referred Sneha
UPDATE students SET referred_by_id = 6 WHERE student_id IN (11, 12);  -- Anjali referred Kunal and Sneha Bansal
-- Leave the rest as NULL (not referred by anyone)

SELECT student_id, Name, referred_by_id FROM students ORDER BY student_id; -- verify

-- Running self Join
SELECT 
    a.student_id,
    a.Name AS student_name,
    b.Name AS referred_by
FROM students a
LEFT JOIN students b ON a.referred_by_id = b.student_id; -- LEFT JOIN is important here — it keeps students with NULL referrals visible too, instead of dropping them.

-- Practicing some Querys
-- Count how many students each person referred
SELECT b.Name AS referrer, COUNT(*) AS total_referred
FROM students a
JOIN students b ON a.referred_by_id = b.student_id
GROUP BY b.Name;

-- Students who were NOT referred by anyone
SELECT Name FROM students WHERE referred_by_id IS NULL;
