use hr;

select * from employees;

select department_id, avg(salary), count(*)
from employees
group by department_id
having count(department_id)>2;

select employee_id, first_name, salary from employees
where salary > (select salary from employees where employee_id=178);

select e.first_name, e.last_name, d.department_name, l.city, l.state_province
from employees e inner join departments d on e.department_id=d.department_id
inner join locations l on d.location_id=l.location_id
where e.first_name like '%p%';

select * from employees;
select * from departments;
select * from locations;

select e.first_name, d.department_name
from employees e inner join departments d using (department_id);

select * from employees;
select * from departments;

select d.department_name, e.max_salary
from departments d
join (select department_id, max(salary) as max_salary from employees group by department_id) e
on d.department_id=e.department_id;

select curtime();
select curdate();
select month(curdate());
select monthname(curdate());
select str_to_date('18,11,2023','%d,%m,%Y');



select department_id, max(salary) as max_salary from employees group by department_id;


select * from movie_main;

SELECT Country, COUNT(*) AS No_of_Movies, AVG(duration) AS Avg_duration 
FROM movie_main 
group BY Country;

select country, avg(duration)
from movie_main
group by country
having avg(duration)>120;

WITH Movies_with_avg_duration AS
    (SELECT Country, COUNT(*) AS No_of_Movies, AVG(duration) AS Avg_duration 
    FROM movie_main
    GROUP BY Country)
SELECT No_of_Movies, Country, Avg_duration FROM  Movies_with_avg_duration
WHERE Avg_duration > 120;

select * from employees;

select distinct e.first_name, e.last_name from employees e
inner join employees m on e.employee_id=m.manager_id;

select first_name, last_name from employees
where employee_id in (select manager_id from employees);

use movie;
select * from movie_info;
select * from movie_main;

use california_collisions;

CREATE OR REPLACE VIEW num_parties_injured_by_collision_year AS (
	SELECT
		YEAR(collision_date) AS collision_year,
		SUM(injured_victims) AS num_parties_injured
	FROM collisions
	GROUP BY collision_year
	ORDER BY collision_year);

select * from num_parties_injured_by_collision_year;

SELECT 
*,
    SUM(num_parties_injured) OVER (PARTITION BY collision_year) AS num_parties_injured_so_far
FROM num_parties_injured_by_collision_year;

SELECT
	*,
    SUM(num_parties_injured) OVER (ORDER BY collision_year) AS num_parties_injured_so_far
FROM num_parties_injured_by_collision_year;


SELECT
	*,
    SUM(num_parties_injured) OVER () AS num_parties_injured_so_far
FROM num_parties_injured_by_collision_year;

use movie;

select * from movie_main;

call get_fare(150,200);


use spcur;

create table orders(
id int auto_increment primary key,
customer_id int,
product_id int,
sale_price int,
quantity int
);

create table product(
id int auto_increment primary key,
product_name varchar(20),
cost_price int
);

insert into orders(customer_id, product_id, sale_price, quantity) values
(1,1,10,2),
(2,2,20,3),
(1,3,15,1),
(3,4,25,2),
(2,2,30,2),
(1,1,20,1);

insert into product(product_name, cost_price) values
('product1',5),
('product2',10),
('product3',12),
('product4',15);

select * from orders;
select * from product;


select Product_Name, round(avg(Profit_Margin),2) 'Profit_Margin %', sum(Tot_Sales) from(
select *, (Tot_Sales-COGS) as Profit, round(((Tot_Sales-COGS)/Tot_Sales)*100,2) as Profit_Margin from(
select o.id,p.product_name Product_Name, p.cost_price Cost_Price, o.sale_price Sale_Price, o.quantity Quantity,
quantity*cost_price as COGS, quantity*sale_price as Tot_Sales
from orders o inner join product p on (o.product_id=p.id))tbl1)tbl2
group by Product_Name;


create table products(
id int auto_increment primary key,
customer_id int,
product varchar(20),
total_price int,
quantity int,
order_date date
);

insert into products(customer_id, product, total_price, quantity, order_date) values
(1, 'product1',10,2,'2021-01-01'),
(2, 'product2',20,3,'2021-01-02'),
(1, 'product3',30,1,'2021-02-01'),
(2, 'product4',40,4,'2021-02-15'),
(3, 'product5',50,5,'2021-03-01'),
(1, 'product6',60,6,'2021-03-15'),
(2, 'product7',70,7,'2021-04-01'),
(3, 'product8',80,8,'2021-04-15'),
(1, 'product9',90,9,'2021-05-01'),
(2, 'product10',100,10,'2021-05-15');

select * from products;


select month(order_date) Month, year(order_date) Year, round(avg(order_value),2) AOV from(
select product, order_date, sum(total_price*quantity) as order_value
from products
group by product, order_date)tbl1
group by month(order_date), year(order_date);