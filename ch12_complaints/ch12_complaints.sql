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