use hr;

select * from employees;

select e.first_name, e.last_name, d.department_id, d.department_name
from employees e join departments d using (department_id);

select first_name, last_name, salary from employees
where salary between 10000 and 15000
and department_id in (3,7);

select min(salary), max(salary), round(avg(salary),2) from employees
group by department_id;

select department_id, round(avg(salary),2), count(*) from employees
group by department_id
having count(*)>3;

select c.country_id, c.country_name, r.region_id, r.region_name
from countries c join regions r using(region_id);

select j.job_id, e.first_name, (e.salary-j.min_salary) as "Difference"
from jobs j join employees e using (job_id);