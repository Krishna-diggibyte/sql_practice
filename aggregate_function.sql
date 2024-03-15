CREATE DATABASE UNIVERSITY;

USE UNIVERSITY;

CREATE TABLE student (
    roll_no INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT
);

INSERT INTO student (roll_no, fname, lname, age,)
VALUES 
    (1, 'Krishna', 'Bhandari', 20),
    (2, 'Pratibha', 'Nimbolkar', 21),
    (3, 'Amit', 'Kundu', 22,),
    (4, 'Kuldeeep', 'Singh', 23,);



SELECT COUNT(*) AS Total_Students FROM student;

-- Finding the youngest student
SELECT MIN(age) AS Youngest_Student_Age FROM student;

-- Finding the oldest student
SELECT MAX(age) AS Oldest_Student_Age FROM student;

-- Finding the average age of students
SELECT AVG(age) AS Average_Student_Age FROM student;

-- Combining all statistics in one query
SELECT 
    COUNT(*) AS Total_Students,
    MIN(age) AS Youngest_Student_Age,
    MAX(age) AS Oldest_Student_Age,

FROM student;