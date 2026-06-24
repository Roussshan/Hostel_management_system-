use hostel_management;

-- --------------------------- --
-- Create new table complaints --
-- --------------------------- --

CREATE TABLE complaints (
    complaint_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    room_id INT NOT NULL,
    description VARCHAR(255),
    status ENUM('Open','Resolved') DEFAULT 'Open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

describe complaints;

-- checking room_ids.
SELECT student_id, Name, room_id FROM students ORDER BY student_id;

-- Inserting samples complaints 
INSERT INTO complaints (student_id, room_id, description, status) VALUES
(2, 2, 'Leaking tap in bathroom', 'Open'),
(5, 4, 'Fan not working', 'Resolved'),
(7, 5, 'Wifi not reaching room', 'Open'),
(9, 4, 'Broken window latch', 'Resolved'),
(10, 5, 'Noisy neighbors at night', 'Open'),
(3, 1, 'Door lock jammed', 'Resolved'),
(6, 2, 'No hot water', 'Open'),
(13, 5, 'Pest control needed', 'Open');

-- Setting Resolved_at for resolved one.
UPDATE complaints SET resolved_at = '2026-06-10 14:00:00' WHERE complaint_id = 2;
UPDATE complaints SET resolved_at = '2026-06-11 10:30:00' WHERE complaint_id = 4;
UPDATE complaints SET resolved_at = '2026-06-09 16:45:00' WHERE complaint_id = 6;

select * from complaints; -- verifying

-- Trying a 3-table JOIN
SELECT s.Name, r.room_number, c.description, c.status
FROM complaints c
JOIN students s ON c.student_id = s.student_id
JOIN rooms r ON c.room_id = r.room_id;