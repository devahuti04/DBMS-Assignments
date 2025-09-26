DROP DATABASE IF EXISTS college;

CREATE DATABASE college;
USE college;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade CHAR(1),
    marks INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students VALUES 
(1, 'Priya', 20, 'A', 85),
(2, 'Amit', 21, 'B', 70),
(3, 'Riya', 19, 'A', 90);

INSERT INTO courses VALUES 
(101, 1, 'DBMS'),
(102, 2, 'Operating Systems'),
(103, 3, 'Networks');

SELECT * FROM students

SELECT AVG(marks) AS Average_Marks FROM students;

SELECT s.name, c.course_name
FROM students s
JOIN courses c ON s.id = c.student_id;