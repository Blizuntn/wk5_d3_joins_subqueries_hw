select *
from customer;

select *
from address;

select *
from city;

select * from country

select *
from payment;

select *
from staff

select *
from store

-- List all customers who live in Texas

select customer.customer_id, customer.address_id
from customer
join address on address.address_id = customer.address_id
where address.district = 'Texas'


--2. Get all payments above $6.99 with the Customer's Full Name

select customer.first_name, customer.last_name
from customer 
join payment on payment.customer_id = customer.customer_id
where payment.amount > 6.99


-- 3. Show all customers names who have made payments over $175(use subqueries

select customer.first_name
from customer
where customer_id in (
select customer_id
from payment
group by customer_id
having sum(amount) > 175);

-- 4. List all customers that live in Nepal (use the city table)
select *
from customer
join address on address.address_id = customer.address_id
join city on city.city_id = address.city_id
join country on country.country_id = city.country_id
where country.country = 'Nepal'

--5. Which staff member had the most transactions?