create database joins1;
use joins1;



CREATE TABLE Students_1NF (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(100)
);


CREATE TABLE Courses_3NF (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100),
    Instructor_ID INT
);


CREATE TABLE Instructors_3NF (
    Instructor_ID INT PRIMARY KEY,
    Instructor_Name VARCHAR(100)
);

CREATE TABLE StudentCourses_2NF (
    Student_ID INT,
    Course_ID INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students_1NF(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses_3NF(Course_ID)
);

INSERT INTO Students_1NF (Student_ID, Student_Name) VALUES
(1, 'Ananya Rao'),
(2, 'Ravi Kumar'),
(3, 'Meera Iyer');

INSERT INTO Courses_3NF (Course_ID, Course_Name, Instructor_ID) VALUES
(101, 'Data Structures', 201),
(102, 'Database Systems', 202),
(103, 'Operating Systems', 203);


INSERT INTO Instructors_3NF (Instructor_ID, Instructor_Name) VALUES
(201, 'Dr. Suresh Menon'),
(202, 'Prof. Kavita Joshi'),
(203, 'Dr. Arvind Narayan');


INSERT INTO StudentCourses_2NF (Student_ID, Course_ID) VALUES
(1, 101),
(2, 102),
(3, 103);

SELECT s.Student_Name, c.Course_Name, i.Instructor_Name
FROM StudentCourses_2NF as sc
JOIN Students_1NF s ON sc.Student_ID = s.Student_ID
JOIN Courses_3NF c ON sc.Course_ID = c.Course_ID
JOIN Instructors_3NF i ON c.Instructor_ID = i.Instructor_ID;

SELECT c.Course_Name
FROM Courses_3NF c
JOIN Instructors_3NF i ON c.Instructor_ID = i.Instructor_ID
WHERE i.Instructor_Name = 'Prof. Kavita Joshi';


SELECT c.Course_Name, COUNT(sc.Student_ID) AS Student_Count
FROM StudentCourses_2NF sc
JOIN Courses_3NF c ON sc.Course_ID = c.Course_ID
GROUP BY c.Course_Name;

SELECT i.Instructor_Name, c.Course_Name
FROM Instructors_3NF i
LEFT JOIN Courses_3NF c ON i.Instructor_ID = c.Instructor_ID
ORDER BY i.Instructor_Name;