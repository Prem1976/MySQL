/* Stored Procedures */
create database spcur;
use spcur;

create table department(
department_id int primary key,
department_name varchar(50)
);

create table employee(
employee_id int primary key,
employee_name varchar(50),
salary decimal(10,2),
department_id int,
foreign key (department_id) references department(department_id)
);

insert into department(department_id, department_name) values
(1,'Human Resources'),
(2,'Engineering'),
(3,'Marketing');

insert into employee(employee_id, employee_name, salary, department_id) values
(101,'Alice Smith',70000,1),
(102,'Bob Johnson',80000,2),
(103,'Charlie Davis',55000,3),
(104,'Diana Ross',60000,2);

select * from department;
select * from employees;

call updatesalary('Engineering',1000);

use hr;	

select * from employees;
select * from jobs;
select * from departments;

call Emp_Data_Cleaning();

select * from tbl_hop1_employees;
select * from tbl_hop2_employees;
select * from tbl_fnl_employees order by employee_id;


/* Cursors */

create table ee(
id int auto_increment primary key,
name varchar(50),
department varchar(50),
salary decimal(10,2)
);

insert into ee(name, department, salary) values
('Alice','Sales',50000),
('Bob','HR',45000),
('Charlie','IT',55000);

select * from ee;
call Update_Salary();

select max(salary) from ee;

select salary from ee where salary=(select max(salary) from ee);
select salary from ee order by salary desc;