USE sakila;

-- Q1: Drop column picture from staff.
ALTER TABLE staff DROP picture;

-- Q2: A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

INSERT INTO staff(first_name, last_name, address_id, email, store_id, active, username) 
VALUES
('TAMMY', 'SANDERS', 79, 'TAMMY.SANDERS@sakilacustomer.org', 2, 1, 'Tammy');

SELECT * FROM staff; -- I accidently added tammy twice here. 

-- Q3: 

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
select film_id from sakila.film
where title = "Academy Dinosaur";
select inventory_id from sakila.inventory
where film_id and store_id = 1;
INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id)
VALUES (now(), 1, 130, 1);

