USE hostel_management;

-- Check default autocommit state
SELECT @@autocommit;

-- Turn off autocommit so changes aren't saved automatically
SET autocommit = 0;

-- Make a change
UPDATE students SET Age = 23 WHERE student_id = 1;
SELECT Age FROM students WHERE student_id = 1; -- shows 23

-- Save it permanently
COMMIT;

-- Make another change
UPDATE students SET Age = 99 WHERE student_id = 2;
SELECT Age FROM students WHERE student_id = 2; -- shows 99

-- Undo it instead of saving
ROLLBACK;
SELECT Age FROM students WHERE student_id = 2; -- back to original, not 99

-- Turn autocommit back on
SET autocommit = 1;