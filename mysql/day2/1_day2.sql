create database student_course_system;
use student_course_system;

CREATE TABLE StudentCourses_UNF(
    Student_ID INT,
    Student_Name VARCHAR(50),
    Courses_Taken VARCHAR(100),     -- Multiple values stored as comma-separated
    Instructor_Names VARCHAR(100)   -- Multiple values stored as comma-separated
);

show tables;  -- shows  tables
desc StudentCourses_UNF; -- describe table 

INSERT INTO StudentCourses_UNF VALUES
(1, 'John Doe',  'Math, Physics',       'Mr. Alan, Mrs. Smith'),
(2, 'Jane Smith','Math',                'Mr. Alan'),
(3, 'Alex Brown','Physics, Chemistry',  'Mrs. Smith, Dr. White');

select * from StudentCourses_UNF;


CREATE TABLE Students_1NF (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50)
);

desc students_1nf;

CREATE TABLE StudentCourses_1NF (
    Student_ID INT,
    Course_Name VARCHAR(50),
    Instructor_Name VARCHAR(50),
    PRIMARY KEY (Student_ID, Course_Name)  -- composite key to ensure uniqueness
);

desc StudentCourses_1NF;

INSERT INTO Students_1NF VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alex Brown');

select * from Students_1NF;

INSERT INTO StudentCourses_1NF VALUES
(1, 'Math',      'Mr. Alan'),
(1, 'Physics',   'Mrs. Smith'),
(2, 'Math',      'Mr. Alan'),
(3, 'Physics',   'Mrs. Smith'),
(3, 'Chemistry', 'Dr. White');

select * from StudentCourses_1nf;




select * from StudentCourses_1nf;

------------------------------------------------------------
show tables;

CREATE TABLE Courses_2NF (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Instructor_Name VARCHAR(50)
);

desc courses_2nf;

INSERT INTO Courses_2NF VALUES
(101, 'Math', 'Mr. Alan'),
(102, 'Physics', 'Mrs. Smith'),
(103, 'Chemistry', 'Dr. White');

select * from courses_2nf;

CREATE TABLE StudentCourses_2NF (
    Student_ID INT,
    Course_ID INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students_1NF(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses_2NF(Course_ID)
);

desc StudentCourses_2NF;

INSERT INTO StudentCourses_2NF VALUES
(1, 101),
(1, 102),
(2, 101),
(3, 102),
(3, 103);

select * from StudentCourses_2NF;

show tables;


CREATE TABLE Instructors_3NF (
    Instructor_ID INT PRIMARY KEY,
    Instructor_Name VARCHAR(50)
);
desc Instructors_3NF;

INSERT INTO Instructors_3NF VALUES
(1, 'Mr. Alan'),
(2, 'Mrs. Smith'),
(3, 'Dr. White');

select * from Instructors_3NF;

CREATE TABLE Courses_3NF (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Instructor_ID INT,
    FOREIGN KEY (Instructor_ID) REFERENCES Instructors_3NF(Instructor_ID)
);

desc Courses_3NF;

INSERT INTO Courses_3NF VALUES
(101, 'Math', 1),
(102, 'Physics', 2),
(103, 'Chemistry', 3);

select * from Courses_3NF;


---------------- asg


create database asg;
use asg;


CREATE TABLE Customer (
    Cust_ID INT PRIMARY KEY AUTO_INCREMENT,
    Cust_Name VARCHAR(50),
    Cust_City VARCHAR(50)
);


CREATE TABLE Item (
    Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Item_Name VARCHAR(50)
);


CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);


CREATE TABLE Order_Items (
    Order_ID INT,
    Item_ID INT,
    Quantity INT,
    PRIMARY KEY (Order_ID, Item_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Item_ID) REFERENCES Item(Item_ID)
);

INSERT INTO Customer (Customer_Name, Customer_City)
VALUES
('Alice', 'Mumbai'),
('Bob', 'Delhi');


INSERT INTO Item (Item_Name)
VALUES
('Pen'),
('Book'),
('Pencil');


INSERT INTO Orders (Order_ID, Customer_ID)
VALUES
(1, 1),   
(2, 2),   
(3, 1);   


INSERT INTO Order_Items (Order_ID, Item_ID, Quantity)
VALUES
(1, 1, 2),   
(1, 2, 1),   
(2, 2, 3),   
(3, 1, 5),   
(3, 3, 3),   
(3, 2, 2);




