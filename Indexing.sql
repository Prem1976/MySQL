/* Framing */

use hr;

select * from employees;
select * from jobs;
select * from departments;

select first_name, salary,
avg(salary) over (order by salary desc) avg_sal from employees;

select first_name, salary, job_id,
avg(salary) over (partition by job_id order by salary desc rows between 1 preceding and 1 following) avg_sal
from employees;


/* Indexing */
select * from employees;

create index idx_dept on employees(department_id);

desc employees;

select * from employees where department_id=10;

use interview;

select * from customer;

select cust_city, payment_amt,
avg(payment_amt) over (partition by cust_city order by payment_amt asc
rows between 0 preceding and 3 following) 3_Fut_Avg
from customer;