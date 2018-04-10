use sakila;
 select * from category;
 #where name = 'family'; #category_id
 
select * from film_category;
#where category_id = 8; #category_id; film_id

select * from inventory; #filim_id

select * from film; #film_id, title, rating

select * from film_text; # film_id, title


select * from payment; #rental_id, payment_date
select * from rental; #rental_id, rental_date, inventory_id
select * from inventory; #inventory_id, film_id
select * from film; #film_id, title

select * from store; #store_id
select * from payment; #staff_id, amount
select * from rental; #staff_id

select * from country