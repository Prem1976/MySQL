use hr;

select * from employees;

create database rank_today;
use rank_today;
drop table scores;
create table scores(
id int,
player_name varchar(20),
score int
);

insert into scores(id, player_name, score) values
(1,'Alice',100),
(2,'Bob',80),
(3,'Charlie',90),
(1,'Alice',100),
(3,'Charlie',90),
(2,'Bob',80),
(2,'Bob',80),
(4,'Rushank',70);


select *,
rank() over (order by score desc) as rnk,
dense_rank() over (order by score desc) as drnk,
row_number() over (order by score desc) as rnum
from scores;


select *,
rank() over (order by score desc) rnk,
row_number() over (order by score desc) rnum
from scores;


/* Interview Question on deleting duplicate rows on score */
select * from
(select player_name, score,
rank() over (order by score desc) rnk,
row_number() over (order by score desc) rnum
from scores) tbl
where rnk=rnum;

/* Create a copy of a table structure */
create table score_new select * from scores where 1=2;
desc score_new;

/* insert unique rows from one table to another */
insert into score_new
select id, player_name, score from
(select *,
rank() over (order by score desc) rnk,
row_number() over (order by score desc) rnum
from scores) tbl
where rnk=rnum;

select * from score_new;


use hrdb;
select * from employees;

select * from employees;
select * from departments;
select commission_pct, ifnull(commission_pct, 0) from employees;

select *, dense_rank() over(order by yearly_salary desc) rnk from(
select concat(e.first_name, " ", e.last_name) name,
e.salary, ifnull(e.commission_pct,0) commission, d.department_name,
round((salary + (salary*ifnull(e.commission_pct,0)))*12,2) yearly_salary
from employees e inner join departments d
using (department_id)) tbl;


/* Ranking based on a specific column using partition by*/
select first_name, last_name, job_id, salary,
rank() over (partition by job_id order by salary desc) rnk,
dense_rank() over (partition by job_id order by salary desc) drnk,
row_number() over (partition by job_Id order by salary desc) rnum
from employees;

select name, salary, commission, department_name, yearly_salary,
rank() over(partition by department_name order by yearly_salary desc) rnk from(
select concat(e.first_name, " ", e.last_name) name,
e.salary, ifnull(e.commission_pct,0) commission, d.department_name,
round((salary + (salary*ifnull(e.commission_pct,0)))*12,2) yearly_salary
from employees e inner join departments d
using (department_id)) tbl;







