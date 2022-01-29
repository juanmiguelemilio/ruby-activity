-- 1
SELECT
COUNT(DISTINCT inventory_id) AS unique_inventory_rented,
COUNT(inventory_id) AS total_inventory_rented
FROM rental;

-- 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM film_actor;

SELECT * FROM actor
WHERE last_name = 'Streep' AND first_name = 'Dan';

SELECT * FROM actor
WHERE last_name = 'Torn' AND first_name = 'Dan';

SELECT film.title AS film_title, film.release_year, film.rating, concat((actor.first_name), ' ', actor.last_name) AS actor_full_name
FROM film 
LEFT JOIN film_actor ON film_actor.film_id = film.film_id
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.actor_id = 18 OR actor.actor_id = 116
ORDER BY film.title;

-- 3
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM category;
SELECT * FROM film_category;
SELECT * FROM film_actor;

SELECT concat((actor.first_name), ' ', actor.last_name) AS actor_full_name, film.title AS film_tile, category.name AS category_name
FROM film
LEFT JOIN film_category ON film_category.film_id = film.film_id
LEFT JOIN category ON category.category_id = film_category.category_id
LEFT JOIN film_actor ON film_actor.film_id = film_category.film_id
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE category.name = 'Comedy' AND actor.last_name LIKE 'D%'
ORDER BY concat((actor.first_name), ' ', actor.last_name);

-- 4
SELECT * FROM staff;
SELECT * FROM country;
SELECT * FROM customer;
SELECT * FROM address;
SELECT * FROM city;

SELECT concat(staff.first_name,', ', staff.last_name) AS staff_full_name,
COUNT(country.country) AS customer_count
FROM customer
LEFT JOIN payment ON payment.customer_id = customer.customer_id
LEFT JOIN staff ON staff.staff_id = payment.staff_id
LEFT JOIN address ON address.address_id = staff.address_id
LEFT JOIN city ON city.city_id = address.city_id
LEFT JOIN country ON country.country_id = city.country_id
GROUP BY country, concat(staff.first_name,', ', staff.last_name)
ORDER BY country;

-- 5
SELECT * FROM staff;
SELECT * FROM film;
SELECT * FROM category;
SELECT * FROM inventory;
SELECT * FROM rental;
SELECT * FROM film_category;
SELECT * FROM store;
SELECT * FROM actor;

SELECT staff.store_id, COUNT(film.title) film_count,  category.name AS category_name
FROM rental
LEFT JOIN inventory ON inventory.inventory_id = rental.inventory_id
LEFT JOIN film ON film.film_id = inventory.film_id
LEFT JOIN film_category ON film_category.film_id= film.film_id
LEFT JOIN category ON category.category_id = film_category.category_id
LEFT JOIN staff ON staff.staff_id = rental.staff_id
LEFT JOIN store ON store.store_id = staff.store_id
GROUP BY staff.store_id, category.name
HAVING COUNT(film.title) = 
	(SELECT MAX(actor.film_count) FROM (
      SELECT COUNT(film.title) film_count, staff.store_id, category.name
         FROM rental
         LEFT JOIN inventory ON inventory.inventory_id = rental.inventory_id
         LEFT JOIN film ON film.film_id = inventory.film_id
         LEFT JOIN film_category ON film_category.film_id = film.film_id
         LEFT JOIN category ON category.category_id = film_category.category_id
         LEFT JOIN staff ON staff.staff_id = rental.staff_id
         LEFT JOIN store ON store.store_id = staff.store_id
         GROUP BY staff.store_id, category.name) actor WHERE actor.store_id = 1);
	 
SELECT staff.store_id, COUNT(film.title) film_count,  category.name AS category_name
FROM rental
LEFT JOIN inventory ON inventory.inventory_id = rental.inventory_id
LEFT JOIN film ON film.film_id = inventory.film_id
LEFT JOIN film_category ON film_category.film_id= film.film_id
LEFT JOIN category ON category.category_id = film_category.category_id
LEFT JOIN staff ON staff.staff_id = rental.staff_id
LEFT JOIN store ON store.store_id = staff.store_id
GROUP BY staff.store_id, category.name
HAVING COUNT(film.title) = 
	(SELECT MAX(actor.film_count) FROM (
      SELECT COUNT(film.title) film_count, staff.store_id, category.name
         FROM rental
         LEFT JOIN inventory ON inventory.inventory_id = rental.inventory_id
         LEFT JOIN film ON film.film_id = inventory.film_id
         LEFT JOIN film_category ON film_category.film_id = film.film_id
         LEFT JOIN category ON category.category_id = film_category.category_id
         LEFT JOIN staff ON staff.staff_id = rental.staff_id
         LEFT JOIN store ON store.store_id = staff.store_id
         GROUP BY staff.store_id, category.name) actor WHERE actor.store_id = 2);

-- 6
SELECT actor.country, actor.actor_full_name, actor.actor_rank, actor.rental_count 
FROM (SELECT country.country country, concat(actor.first_name,', ', actor.last_name) AS actor_full_name,  
COUNT(rental.rental_id) rental_count, 
RANK() OVER( 
	PARTITION BY country.country 
	ORDER BY COUNT(rental.rental_id) DESC) actor_rank
FROM rental
LEFT JOIN inventory ON inventory.inventory_id = rental.inventory_id
LEFT JOIN film ON film.film_id = inventory.film_id
LEFT JOIN film_actor ON film_actor.film_id = film.film_id
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
LEFT JOIN staff ON staff.staff_id = rental.staff_id
LEFT JOIN address ON address.address_id = staff.address_id
LEFT JOIN city ON city.city_id = address.city_id
LEFT JOIN country ON country.country_id = country.country_id
GROUP BY actor.last_name, actor.first_name, country.country) actor WHERE actor.actor_rank BETWEEN 1 AND 5;