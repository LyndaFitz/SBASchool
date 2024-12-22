CREATE TABLE Student (
    email VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE Course (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Or IDENTITY for SQL Server
    name VARCHAR(50) NOT NULL,
    instructor VARCHAR(50) NOT NULL
);

CREATE TABLE Student_Course (
    student_email VARCHAR(50) NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (student_email) REFERENCES Student(email),
    FOREIGN KEY (course_id) REFERENCES Course(id)
);

-- SQL QUERRY-- 

SELECT *
FROM Student;

SELECT *
FROM Courses;

Select *
from Students_Courses;
