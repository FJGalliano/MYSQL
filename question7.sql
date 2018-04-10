use sakila;
#Question 7a.
SELECT title
  FROM film
  WHERE film_id IN
     (
      SELECT film_id
      FROM language
      WHERE name = "English"
  )
  AND title LIKE 'K%'
  ;
  
SELECT title
  FROM film
  WHERE film_id IN
     (
      SELECT film_id
      FROM language
      WHERE name = "English"
  )
	AND title LIKE 'Q%'
;

# Question 7b.
SELECT first_name, last_name
    FROM actor
    WHERE actor_id IN
    (
      SELECT actor_id
      FROM film_actor
      WHERE film_id IN
      (
       SELECT film_id
       FROM film
       WHERE title = 'Alone Trip'
 )
    );
    
#Question 7c.
SELECT first_name, last_name, email
	FROM  customer
    where address_id IN
    (
    select address_id
    from address
    where city_id IN
    (
    select city_id
    from country
    where country = 'Canada'
    ));
    
#Question 7d.
SELECT title
	FROM  film_text
    where film_id IN
	(
    select  film_id
    from film_category
    where category_id = 8 IN
    (   
    select category_id
    from category
    where name = 'Family'
    ));
#Question 7e.
select title
from film
where film_id in
(
select film_id
from inventory
where inventory_id in
(
select inventory_id
from rental
where rental_id
));
#Question 7f
select staff_id as store, sum(amount) as sales
from payment
group by staff_id

#Question 7g.
#Cannot find data

#Question 7h.
