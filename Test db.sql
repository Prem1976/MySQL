create database Test;

use Test;

drop table if exists cars;
create table cars
(
	model_id		int primary key,
	model_name		varchar(100),
	color			varchar(100),
	brand			varchar(100)
);
insert into cars values(1,'Leaf', 'Black', 'Nissan');
insert into cars values(2,'Leaf', 'Black', 'Nissan');
insert into cars values(3,'Model S', 'Black', 'Tesla');
insert into cars values(4,'Model X', 'White', 'Tesla');
insert into cars values(5,'Ioniq 5', 'Black', 'Hyundai');
insert into cars values(6,'Ioniq 5', 'Black', 'Hyundai');
insert into cars values(7,'Ioniq 6', 'White', 'Hyundai');

select * from cars;

select min(model_id) from cars group by model_name;

select model_id,rn from (select *, row_number() over (partition by model_name, brand, color order by model_id) as rn from cars) x
where x.rn>1;


CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL
);

INSERT INTO contacts (first_name,last_name,email) 
VALUES ('Carine ','Schmitt','carine.schmitt@verizon.net'),
       ('Jean','King','jean.king@me.com'),
       ('Peter','Ferguson','peter.ferguson@google.com'),
       ('Janine ','Labrune','janine.labrune@aol.com'),
       ('Jonas ','Bergulfsen','jonas.bergulfsen@mac.com'),
       ('Janine ','Labrune','janine.labrune@aol.com'),
       ('Susan','Nelson','susan.nelson@comcast.net'),
       ('Zbyszek ','Piestrzeniewicz','zbyszek.piestrzeniewicz@att.net'),
       ('Roland','Keitel','roland.keitel@yahoo.com'),
       ('Julie','Murphy','julie.murphy@yahoo.com'),
       ('Kwai','Lee','kwai.lee@google.com'),
       ('Jean','King','jean.king@me.com'),
       ('Susan','Nelson','susan.nelson@comcast.net'),
       ('Roland','Keitel','roland.keitel@yahoo.com');

delete from contacts
where id in(
	select id from(
		select id, row_number() over (partition by first_name, last_name, email) as rn from contacts) x
        where rn>1);

select * from contacts;

create table address(
address_id varchar(20) primary key,
street varchar(50),
city varchar(50),
state varchar(20),
country varchar(30)
);

create table school(
school_id varchar(20) primary key,
school_name varchar(100) not null,
education_board varchar(80),
address_id varchar(20),
constraint fk_school_addr foreign key(address_id) references address(address_id)
);

create table staff(
staff_id varchar(20),
staff_type varchar(30),
school_id varchar(20),
first_name varchar(50) not null,
last_name varchar(50) not null,
age int,
dob date,
gender varchar(10),
join_date date,
address_id varchar(20),
constraint chk_gender check (gender in ('M','F')),
constraint pk_stf primary key(staff_id),
constraint fk_staff_schl foreign key(school_id) references school(school_id),
constraint fk_staff_addr foreign key(address_id) references address(address_id)
);

