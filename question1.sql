use  sakila;

alter table actor add actor_name varchar (30) not null;

select * from actor;

alter table actor add middle_name varchar(10);

ALTER TABLE actor MODIFY COLUMN middle_name VARCHAR(10) AFTER first_name;
# Question 3b.
alter table actor  change middle_name middle_name blob;
# Questions 3c.
alter table actor drop middle_name;