use sakila;
#Question 4a.

SELECT last_name FROM actor order by last_name;
# select * from actor  last_name order by last_name;

SELECT count( DISTINCT(last_name) ) from actor;

select last_name
from actor
where last_name = last_name
group by last_name;


SELECT
   	last_name,
   	count(*) as frequency_last_name
FROM
   	actor
GROUP BY
   	last_name
HAVING COUNT(*) >1;

select last_name, first_name, actor_id  from actor
where last_name = 'williams' and first_name = 'GROUCHO';
