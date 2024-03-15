CREATE DATABASE COLLEGE;

USE COLLEGE;

CREATE TABLE students (
    roll_no INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT
);

INSERT INTO student (roll_no, fname, lname, age,t_id)
VALUES
    (1, 'Krishna', 'Bhandari', 20,2),
    (2, 'Pratibha', 'Nimbolkar', 21,3),
    (3, 'Amit', 'Kundu', 22,4),
    (4, 'Kuldeeep', 'singh', 23,2);

SELECT * FROM students;

UPDATE students
SET age = 21
WHERE roll_no = 1;


UPDATE students
SET age = 22
WHERE roll_no = 2;

ALTER TABLE students
ADD  email VARCHAR(100);

-

CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    subject VARCHAR(100)
);

-- Insert sample teacher details
INSERT INTO teacher (teacher_id, first_name, last_name, subject)
VALUES 
    (1, 'Michael', 'Johnson', 'Mathematics'),
    (2, 'Emily', 'Smith', 'English'),
    (3, 'David', 'Williams', 'Science'),
    (4, 'Sophia', 'Brown', 'History');


	INSERT INTO teacher (teacher_id, first_name, last_name, subject)
VALUES (5, 'Mithail', 'Johnson', 'English')

	
	SELECT * FROM teacher;

	SELECT *
FROM teacher
WHERE subject = 'Mathematics';

SELECT city, COUNT(*) AS student_count
FROM students
GROUP BY age;


SELECT city, COUNT(*) AS teacher_count
FROM teacher
GROUP BY age
HAVING COUNT(*) >= 2;


	SELECT
    s.roll_no,
    s.fname AS student_first_name,
    s.lname AS student_last_name,
    t.teacher_id,
    t.first_name AS teacher_first_name,
    t.last_name AS teacher_last_name,
    t.subject,
FROM students s
LEFT JOIN teacher t ON s.t_id = t.teacher_id;

SELECT 
    s.roll_no,
    s.fname AS student_first_name,
    s.lname AS student_last_name,
    s.city AS student_city,
    t.teacher_id,
    t.first_name AS teacher_first_name,
    t.last_name AS teacher_last_name,
    t.subject,
FROM teacher t
RIGHT JOIN students s ON s.t_id = t.teacher_id;

SELECT city, COUNT(*) AS student_count
FROM students
GROUP BY age;

