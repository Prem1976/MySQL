use worldevents;
select * from tblcategory;
select * from tblcontinent;
select * from tblcountry;
select * from tblevent;

select * from tblevent
where year(eventdate)=1976;
desc tblevent;

call listcountries;
call eventdata();
call events_dynamic(5);
call event_count(1);
call sp_cursor();
call country_cur();
call country_name();
call event_ids();


drop table salary;

create table salary(
name1 varchar(10),
emp_sal int
);

insert salary (name1, emp_sal) values ('a',100);
insert salary (name1, emp_sal) values ('b',70);
insert salary (name1, emp_sal) values ('c',200);
insert salary (name1, emp_sal) values ('d',300);
insert salary (name1, emp_sal) values ('e',140);
insert salary (name1, emp_sal) values ('f',NULL);

select * from salary;

SELECT emp_sal, DENSE_RANK() OVER (ORDER BY emp_sal) rnk FROM salary
ORDER BY emp_sal;


