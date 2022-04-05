-- 1 Which actor has appeared in the most films?
use sakila;

select count(LAST_NAME), LAST_NAME from ACTOR as a
inner join FILM_ACTOR as f
on a.ACTOR_ID = f.ACTOR_ID
group by LAST_NAME
order by count(LAST_NAME) DESC

-- 2 Most active customer (the customer that has rented the most number of films)

select count(customer_id), customer_id from rental 
group by customer_id
order by count(customer_id) DESC
limit 5

-- 3 List number of films per category
select count(name), name from category as c
inner join film_category as fc
on fc.category_id=c.category_id
group by name

-- 4 Display the first and last names, as well as the address, of each staff member.
select first_name, last_name, address from staff as s
inner join address as a
on s.address_id=a.address_id 

-- 5 Display the total amount rung up by each staff member in August of 2005.
select first_name, last_name, sum(amount) from staff as s
right join payment as p
on s.staff_id=p.staff_id
group by p.staff_id
order by last_name 

-- 6 List each film and the number of actors who are listed for that film.

select title, count(actor_id) from film as f
inner join film_actor as fa
on fa.film_id=f.film_id
group by title

-- 7 Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.
select sum(amount), last_name from customer as c
inner join payment as p
on p.customer_id=c.customer_id
group by p.customer_id
order by last_name

