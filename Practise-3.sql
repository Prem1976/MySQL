select * from orders limit 10;

select order_id, customer_id from orders
where customer_id >=600 and customer_id<700
order by customer_id;

select * from customers limit 10;

select first_name, last_name, email from customers
where email like '%@msn.com';

use hr;

select * from employees;

SELECT CONCAT(REVERSE(first_name) , '  ', UPPER(last_name))
FROM employees
WHERE employee_id=100;


select reverse(substring('Sachin Tendulkar', -7, 3));


use sales;


select concat (reverse(firstName) , '  ', upper(lastName))
from Customers
where customer_id= ’C-05’;

select * from customers;

select ceil(rand() * 6);

create table details(
id int,
name varchar(15),
birth_time datetime);

insert into details values(1001,'Prateek','1995-10-11 04:05');


SELECT name, EXTRACT(DAY FROM birth_time) AS birth_day 
from details;

SELECT name, DAY(birth_time) AS birth_day 
from details;

SELECT name, EXTRACT(YEAR FROM birth_time) AS birth_year 
from details;

SELECT name, YEAR(birth_time) AS birth_year 
from details;

use hr;

SELECT CONCAT(first_name ,' ',last_name) as fullName FROM employees;

select count(*) as totalEmployees from employees;

SELECT employee_id, first_name, last_name from employees
ORDER BY first_name;


use sales;

select * from customers order by first_name;

select first_name, state from customers where state in (select state from customers where zip_code=14127);

select * from orders where order_id between 75 and 115
order by order_id;

select email from customers where city like '%Land' and phone is not null;

select concat(street, ' ', city, ' ', state, ' ', zip_code) as 'Complete Address' from customers
where email like '%msn%';

select concat(first_name,' ', last_name), state from customers
where state='CA';

drop database sales;

use interview;

select * from customer;
select * from agents;

select * from(
select cust_country, cust_name, minamt, rank() over(partition by cust_country order by minamt asc) rnk from (
select cust_country, cust_name, min(outstanding_amt) minamt from customer
where agent_code not in (select agent_code from agents where agent_name='Mukesh')
group by cust_country, cust_name) tbl1)tbl2
where rnk=1;

select * from customer;

select cust_country, sum(receive_amt) tot_rcv_amt from customer
group by cust_country;

select *, sum(receive_amt) over(partition by cust_country) as tot_rcv_amt
from customer;

use hr;

select * from employees;

select first_name, salary,
avg(salary) over (order by salary desc rows between unbounded
preceding and unbounded following) avg_sal from employees;

select first_name, salary,
avg(salary) over (order by salary desc rows between 1
preceding and 1 following) avg_sal from employees;

use ranks;

create table Messi_Goals (
Year int,
Goals int);

insert into Messi_Goals(Year, Goals)
values (2010,60),
(2011,59),
(2012,91),
(2013,45),
(2014,58),
(2015,52),
(2016,59),
(2017,54),
(2018,51),
(2019,50),
(2020,27),
(2021,43);

select * from Messi_Goals;

select Year, Goals,
avg(Goals) over (rows between 4 preceding and 0 following) Mov_Avg
from Messi_Goals;

use california_collisions;


SELECT
	*,
    LAG(num_parties_injured) OVER (ORDER BY collision_year) AS num_parties_injured_prev_year
FROM num_parties_injured_by_collision_year;

SELECT *,
LAG(num_parties_injured) OVER (ORDER BY collision_year) AS num_parties_injured_prev_year
FROM num_parties_injured_by_collision_year;

use hr;
select concat(e.first_name, ' ', e.last_name) name, d.department_name, e.salary,
max(e.salary) over(partition by e.department_id) max_department_salary,
ROUND(((e.salary - MAX(e.salary) OVER (PARTITION BY e.department_id)) / MAX(e.salary) OVER (PARTITION BY e.department_id)) * 100, 2) salary_percentage_difference
from employees e inner join departments d using(department_id);


use interview;

select * from customer;

select cust_city, payment_amt, round(3_fut_avg,2) 3_fut_avg from(
select cust_city, payment_amt,
avg(payment_amt) over (partition by cust_city order by payment_amt asc
rows between 0 preceding and 3 following) 3_fut_avg from customer) tbl;


select * from customer;

select cust_name, Opening_Amt,
case
when Opening_Amt<=3000 then 'A'
when Opening_Amt between 3001 and 6000 then 'B'
when Opening_Amt between 6001 and 9000 then 'C'
when Opening_Amt > 9000 then 'D'
end as 'Tax Slab'
from customer;