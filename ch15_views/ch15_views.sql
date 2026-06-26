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

SELECT * FROM student_outstanding_dues;