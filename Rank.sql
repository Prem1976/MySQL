select * from orders limit 10;
select * from agents limit 10;

select A.AGENT_NAME, A.AGENT_CODE, O.ORD_AMOUNT,
RANK() over (order by o.ORD_AMOUNT asc) as RNK
from agents a join orders o using (AGENT_CODE)
order by RNK;

use ranks;
select * from examresult;

select *, row_number() over (order by Marks) RowNumber from examresult;
select *, row_number() over (order by Marks desc) RowNumber from examresult;

select StudentName, Subject, Marks,
rank() over (partition by StudentName order by Marks desc) Ranks
from examresult
order by StudentName, Ranks;

select StudentName, Subject, Marks,
rank() over (order by Marks desc) Ranks,
dense_rank() over (order by Marks desc) Dense
from examresult
order by Ranks, Dense;

select StudentName, Subject, Marks,
rank() over (order by Marks desc) Ranks
from examresult
order by Ranks;

select Marks,
rank() over (order by Marks desc) Ranks
from examresult
order by Ranks;

select Studentname, Subject, Marks,
rank() over (partition by Subject order by Marks desc) Ranks
from examresult
order by Subject, Ranks;

select StudentName, Subject, Marks,
rank() over (order by Marks desc) Ranks,
dense_rank() over (order by Marks desc) Dense
from examresult
order by Ranks, Dense;

set sql_safe_updates=0;
update examresult set Marks=70 where StudentName='Isabella' and Subject='Maths';


select StudentName, Subject, Marks,
rank() over (partition by StudentName order by Marks) Ranks,
dense_rank() over (partition by StudentName order by Marks) Dense
from examresult
order by StudentName, Ranks, Dense;

select *, ntile(3) over (order by Marks desc) Ranks
from examresult
order by Ranks;

With StudentRanks as
(
	select StudentName, Marks,
    rank() over (order by Marks desc) as Ranks,
    dense_rank() over (order by Marks desc) as Dense
    from examresult
)
select StudentName, Marks, Ranks, Dense
from StudentRanks
where Ranks>=1 and Ranks<=7
order by Ranks, Dense;

select min(Marks) from examresult;

use movie;


select * from movie_info;
select * from movie_main;


select movie_title, language, gross, avg(gross) over(partition by language) as avg_gross_within_language,
case when gross>avg(gross) over(partition by language) then 1
	else 0
end as ind_high_grossing_movie
from movie_main
group by movie_title, language, gross;

use hr;
select * from employees;


use sales;

CREATE TABLE sales (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    salesperson_id INTEGER,
    product TEXT,
    quantity INTEGER,
    price DECIMAL,
    date DATE
);

INSERT INTO sales (id, customer_id, salesperson_id, product, quantity, price, date)
VALUES
    (1, 1, 1, 'Hammer', 2, 10.00, '2020-01-01'),
    (2, 2, 1, 'Screwdriver', 3, 5.00, '2020-01-01'),
    (3, 3, 2, 'Screwdriver', 1, 5.00, '2020-01-01'),
    (4, 4, 3, 'Wrench', 4, 7.50, '2020-01-01'),
    (5, 5, 3, 'Wrench', 2, 7.50, '2020-01-01'),
    (6, 2, 2, 'Pliers', 1, 3.00, '2020-01-01'),
    (7, 1, 1, 'Screwdriver', 1, 5.00, '2020-01-02'),
    (8, 3, 3, 'Screwdriver', 2, 5.00, '2020-01-02');

select * from sales;

select movie_title, language, gross, avg(gross) over(partition by language) as avg_gross_within_language,
case when gross>avg(gross) over(partition by language) then 1
	else 0
end as ind_high_grossing_movie
from movie_main
group by movie_title, language, gross;

select customer_id, sum(price) as total_sales, avg(price) as average_sales,
rank() over (order by sum(price) desc) total_spend
from sales
group by customer_id
order by sum(price) desc;

use ranks;

select StudentName, Subject, Marks,
rank() over (partition by StudentName order by Marks desc) Ranks,
dense_rank() over (partition by StudentName order by Marks desc) Dense
from examresult
order by StudentName, Ranks, Dense;

select *, avg(sales_price),
rank() over (partition by product order by product_rating) as Ranks
from sales_table
group by date, product, sales_price, product_rating;

SELECT date, product, sales_price, product_rating,
       AVG(sales_price) OVER (PARTITION BY product ORDER BY product_rating) as avg_sales_price
FROM sales_table;

select * from sales_table;

with cte1 as (select date, product from sales_table)
select * from cte1;

with cte2 as (select avg(sales_price) as avg_sales from sales_table group by product)
select max(avg_sales) from cte2;

select StudentName, Subject, Marks,
rank() over (order by Marks desc) Ranks,
dense_rank() over (order by Marks desc) Dense
from examresult
group by StudentName, Subject, Marks
order by StudentName, Ranks, Dense;


use sales;
CREATE TABLE sales_table (
  date DATE,
  product VARCHAR(255),
  sales_price DECIMAL(10,2),
  product_rating INT
);

INSERT INTO sales_table (date, product, sales_price, product_rating)
VALUES ('2020-01-01', 'Product A', 100.00, 4),
       ('2020-01-02', 'Product A', 150.00, 3),
       ('2020-01-03', 'Product A', 200.00, 5),
       ('2020-01-04', 'Product A', 250.00, 2),
       ('2020-01-05', 'Product B', 100.00, 3),
       ('2020-01-06', 'Product B', 150.00, 4),
       ('2020-01-07', 'Product B', 200.00, 5),
       ('2020-01-08', 'Product C', 100.00, 2),
       ('2020-01-09', 'Product C', 150.00, 3),
       ('2020-01-10', 'Product C', 200.00, 4);
       
select * from sales_table;






use movie;

select * from movie_main;

select StudentName, Subject, Marks,
rank() over (partition by StudentName order by Marks) Ranks,
dense_rank() over (partition by StudentName order by Marks) Dense
from examresult
order by StudentName, Ranks, Dense;

select * from(
select movie_title, language, release_date, gross,
rank() over (partition by language order by gross desc) Ranks
from movie_main) tbl
where Ranks=1;

select * from employees;

use sales;
select * from sales_table;

select date, sales_price,
lag(sales_price) over (order by date) sales_l,
lead(sales_price) over (order by date) sales_n
from sales_table;