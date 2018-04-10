use sakila;

select * from staff;
select * from address;

#Question 6a.
SELECT first_name, last_name, address FROM staff, address
WHERE staff.address_id = address.address_id;

#Question 6b.
select * from payment;
select first_name, last_name, amount, payment_date from staff, payment
WHERE 
  (payment_date between '2005-08-01 00:00:00' and '2005-08-31 23:59:59') OR
  (staff.staff_id = payment.staff_id);
  #Need help with 6b.

#Question 6c.
select actor_id, title from film_actor, film
where film.film_id = film_actor.film_id;

#Question 6d.
SELECT COUNT(*)
    FROM film
    WHERE film_id IN
    (
     SELECT film_id
     FROM inventory
     WHERE inventory_id IN
     (
      SELECT rental_id
      FROM rental
      WHERE inventory_id IN
      (
       SELECT inventory_id
       FROM inventory
       WHERE film_id IN
       (
        SELECT film_id
        FROM film
        WHERE title = 'Hunchback Impossible'))));

#Question 6e.
select payment.amount, payment.customer_id, customer.customer_id, customer.last_name, customer.first_name
from payment inner join customer
on payment.customer_id = customer.customer_id
where payment.amount != '' order by customer.last_name, customer.first_name asc
#sum(payment.amount);