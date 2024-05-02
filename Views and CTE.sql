use hrdb;

/*-----------Views-----------*/

/* View stores the query, not the table */
create view rank_emp as
select name, salary, commission, department_name, yearly_salary,
rank() over(partition by department_name order by yearly_salary desc) rnk from(
select concat(e.first_name, " ", e.last_name) name,
e.salary, ifnull(e.commission_pct,0) commission, d.department_name,
round((salary + (salary*ifnull(e.commission_pct,0)))*12,2) yearly_salary
from employees e inner join departments d
using (department_id)) tbl;

select * from rank_emp;

create view rank_emp_exe as
select name, salary, commission, department_name, yearly_salary,
rank() over(partition by department_name order by yearly_salary desc) rnk from(
select concat(e.first_name, " ", e.last_name) name,
e.salary, ifnull(e.commission_pct,0) commission, d.department_name,
round((salary + (salary*ifnull(e.commission_pct,0)))*12,2) yearly_salary
from employees e inner join departments d
using (department_id)) tbl
where department_name = 'Executive';

select * from rank_emp_exe;



/*-----------Common Table Expression (CTE) is to improve the Query Performance-----------*/
create table employee(
employeeid int,
employeename varchar(20),
departmentid int
);

insert into employee(employeeid, employeename, departmentid) values
(1,'John Doe',1),
(2,'Jane Smith',2),
(3,'Bob Johnson',1),
(4,'Alice Brown',2),
(5,'Eva Davis',1);
select * from employee;

create table employeesalary(
employeeid int,
salary int
);
insert into employeesalary(employeeid, salary) values
(1,60000),
(2,65000),
(3,58000),
(4,70000),
(5,62000);
select * from employeesalary;

With deptavgsalary as(
select e.departmentid,
avg(es.salary) as avgsal
from employee e
inner join employeesalary es
using (employeeid)
group by e.departmentid
having avgsal>60000
)
select d.departmentid, da.avgsal, count(*) as empcount
from deptavgsalary da
inner join employee d
using (departmentid)
group by d.departmentid, da.avgsal
order by da.avgsal desc;





