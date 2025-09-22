create database employee;
show databases;
use employee;


create table employee(
s_id int primary key,
s_name varchar(25),
s_rollno int,
s_phno varchar(100),
s_email varchar(100)
);

INSERT INTO employee (s_id, s_name, s_rollno, s_phno, s_email)
VALUES(1, 'kelly', 24, 9987, 'noice@gmail.com'),
(2, 'santino', 27, 9435987, 'noice12@gmail.com'),
(3, 'adam', 54, 98587, 'noiceyay@gmail.com'),
(4, 'sugo', 74, 94647, 'noiceboy@gmail.com');
INSERT INTO employee (s_id, s_name, s_rollno, s_phno, s_email)
VALUES
(5, 'nina', 33, 9123456, 'nina33@gmail.com'),
(6, 'raj', 45, 9876543, 'raj45@gmail.com'),
(7, 'lisa', 21, 9345678, 'lisa21@gmail.com'),
(8, 'omar', 66, 9567890, 'omar66@gmail.com');

select*from employee;

desc students;


ALTER TABLE employee
ADD COLUMN s_classroom VARCHAR(15) DEFAULT 'C-103';


select*from employee limit 2;

select * from employee where s_id=2;

select * from employee where s_id>2;

select*from employee limit 4 offset 1;
 
update  employee set s_name="noice" where s_id=4;

SELECT * FROM employee WHERE s_id > 1 AND s_rollno < 24;

delete from employee where s_id=7;

select*from employee;

TRUNCATE TABLE employee; 

drop table employee; /*table drop*/ 

drop database praveen_mgmt; /*delete whole db*/

select database();

