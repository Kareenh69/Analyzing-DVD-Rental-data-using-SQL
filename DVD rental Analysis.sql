---select all columns from actor
select *
from actor;

select first_name,last_name
from actor

---run a query that gives an output of last update and last name from the actors table
select last_name, last_update
from actor

select *
from customer

select first_name, last_name,email
from customer

select release_year
from film

select distinct release_year
from film

select *
from film

select distinct rating
from film

select first_name,last_name
from customer
where first_name = 'Jamie'

select email
from customer
where first_name= 'Nancy'and last_name='Thomas'

select customer_id, amount
from payment
order by amount desc
limit 10

select title, film_id
from film
order by film_id
limit 5

select customer_id,rental_id,rental_date
from rental where customer_id in(1,2)
order by return_date desc

select*
from payment
where amount in(7.99,8.99);

select customer_id,rental_id,return_date
from rental
where customer_id not in(1,2)order by return_date desc

select first_name, last_name
from customer
where first_name Ilike 'jen%'

select customer_id
from payment
group by customer_id

select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc

select rating, avg(rental_rate)
from film
group by rating
order by avg(rental_rate) desc

select*
from payment

select staff_id, count(amount),sum(amount)
from payment
group by staff_id

select *
 from film
 
select rating,avg(replacement_cost)
from film
group by rating

select store_id,count(customer_id)
from customer
group by store_id
having count(customer_id)>300

select rating,avg(rental_rate)
from film
where rating in('R','PG','G')
group by rating
HAVING AVG(rental_rate)<3

select customer.customer_id,first_name,last_name,email,amount,payment_date
from customer
inner join payment on customer.customer_id=payment.customer_id

select film.film_id, film.title,inventory_id
from film
left join inventory on inventory.film_id=film.film_id
where inventory_id is null
order by film.film_id

select film_id, title
from film
where film_id=1 or film_id=2 or film_id=3 or film_id=4 or film_id=5 


select film_id, title
from film
order by film_id
limit 5
