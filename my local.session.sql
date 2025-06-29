-- 1. Create the database
CREATE DATABASE IF NOT EXISTS edu_institute;
USE edu_institute;

-- 2. Create the students table
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    enrollment_date DATE,
    program VARCHAR(50)
);

-- 3. Insert student records
INSERT INTO students (student_id, name, age, gender, enrollment_date, program)
VALUES 
(1, 'Alice Wanjiku', 23, 'F', '2023-09-01', 'Computer Science'),
(2, 'Brian Otieno', 25, 'M', '2023-10-15', 'Data Science'),
(3, 'Cynthia Mwende', 22, 'F', '2024-01-10', 'Cyber Security'),
(4, 'Daniel Kiprono', 24, 'M', '2023-11-20', 'AI & Robotics'),
(5, 'Eva Njeri', 21, 'F', '2024-02-05', 'Business Analytics');

-- 4. Queries for the assignment

-- Students in Data Science
SELECT * FROM students WHERE program = 'Data Science';

-- Total number of students
SELECT COUNT(*) AS 'Total Students' FROM students;

-- Today's date
SELECT CURRENT_DATE() AS `Today's Date`;

-- Uppercase names and enrollment dates
SELECT UPPER(name) AS name_uppercase, enrollment_date FROM students;

-- Count students per program
SELECT program, COUNT(*) AS 'Number of Students' 
FROM students 
GROUP BY program 
ORDER BY `Number of Students` DESC;

-- Youngest student
SELECT name, age 
FROM students 
ORDER BY age ASC 
LIMIT 1;
