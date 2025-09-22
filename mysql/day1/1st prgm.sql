create database praveen_mgmt;
show databases;
use praveen_mgmt;


create table students(
s_id int primary key,
s_name varchar(25),
s_rollno int,
s_email varchar(100)
);

insert into students(s_id,s_name,s_rollno,s_email)values(1,"kelly",24,'noice@gmail.com');

select*from students;
select s_id,s_name,s_email from students;

alter table students add column s_classroom varchar(15);

desc students;

ALTER TABLE students
ADD COLUMN s_classroom VARCHAR(15) DEFAULT 'C-103';

ALTER TABLE students drop COLUMN s_classroom ;

