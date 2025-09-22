create database employee_management_system;
use employee_management_system;

show tables;
desc department;
create table department(
	dept_id bigint primary key auto_increment,
    dept_name varchar(30) not null
);

create table project(
	proj_id bigint primary key auto_increment,
    proj_name varchar(40) not null
);

create table employee(
	emp_id bigint primary key auto_increment,
	name varchar(30) not null,
    job_title varchar(30) not null,
    salary decimal(10,2) not null,
    dept_id bigint,
    project_id bigint,
    foreign key(dept_id) references department(dept_id),
    foreign key(project_id) references project(proj_id)
);

insert into department (dept_name) values('IT'),('Non IT');
select * from department;

insert into project (proj_name) values('erp'),('crm');
select * from project;

insert into employee(name,job_title,salary,dept_id,project_id) values
('mohan','developer',30000,1,1);

select * from employee;

insert into employee(name,job_title,salary,dept_id,project_id) values
('murali','developer',50000,1,2);