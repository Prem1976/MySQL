use sakila;

select concat(first_name, ' ', last_name) as fullname, count(*) as name_count
from actor
group by concat(first_name, ' ', last_name)
order by fullname desc;

select * from actor;

select concat(first_name,' ',last_name) as Actor from actor
where actor_id=(
with actor_movies as(
select actor_id, count(*) as film_count,
row_number() over (order by count(film_id) desc) as rn
from film_actor
group by actor_id)
select actor_id from actor_movies
where rn=3);

with actor_movies as(
select actor_id, count(*) as film_count,
row_number() over (order by count(film_id) desc) as rn
from film_actor
group by actor_id)
select actor_id from actor_movies
where rn=3;


select * from payment;
select * from inventory;
select * from rental;
select * from customer;
select * from film_actor;


SELECT title
FROM film
WHERE film_id in (SELECT film_id
FROM inventory
WHERE inventory_id in (
SELECT inventory_id
FROM rental
GROUP BY inventory_id
ORDER BY count(inventory_id) DESC
        )) limit 1;
        
select title from film where film_id in (
select film_id from inventory where inventory_id in (
select inventory_id from rental
group by inventory_id
order by count(inventory_id) desc ))
limit 4,1;


select city
from city
inner join address
using (city_id)
inner join customer
using (address_id)
inner join payment
using (customer_id)
group by city
order by sum(amount) desc
limit 1;

select name, count(rental_id) as Rental_count
from category c
inner join film_category fc on fc.category_id = c.category_id
inner join film f on f.film_id = fc.film_id
inner join inventory i on i.film_id = f.film_id
inner join rental r on r.inventory_id = i.inventory_id
group by c.category_id, c.name
order by Rental_count desc
limit 1;

select name, count(rental_id) as Rental_count
from category c
inner join film_category fc using(category_id)
inner join film f using(film_id)
inner join inventory using(film_id)
inner join rental using(inventory_id)
group by c.category_id, c.name
order by Rental_count desc;

select * from category;

select concat(first_name,' ',last_name) as customer_name from customer
inner join rental using(customer_id)
inner join inventory using(inventory_id)
inner join film using(film_id)
inner join film_category using(film_id)
inner join category using(category_id)
where name='Sci-Fi'
group by customer_name
having count(rental_id) > 2
order by count(rental_id) desc
limit 1;

select first_name from customer
inner join rental using (customer_id)
inner join address using (address_id)
inner join city using (city_id)
where rental_id>=1 and city='Arlington'
group by first_name;

select concat(first_name,' ',last_name) from customer
inner join rental using (customer_id)
inner join address using (address_id)
inner join city using (city_id)
where rental_id>=1 and city='Arlington'
group by concat(first_name,' ',last_name);

select * from rental;

drop database hr;


SELECT Country, COUNT(*) AS No_of_Movies, AVG(duration) AS Avg_duration 
FROM movie_main 
ORDER BY Country;