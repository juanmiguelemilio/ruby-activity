SELECT
COUNT(DISTINCT inventory_id) AS unique_inventory_rented,
COUNT(inventory_id) AS total_inventory_rented
FROM rental;

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

SELECT concat((actor.first_name), ' ', actor.last_name) AS actor_full_name, film.title AS film_tile, category.name AS category_name
FROM film
LEFT JOIN film_category ON film_category.film_id = film.film_id
LEFT JOIN category ON category.category_id = film_category.category_id
LEFT JOIN film_actor ON film_actor.film_id = film_category.film_id
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE category.name = 'Comedy' AND actor.last_name LIKE 'D%'
ORDER BY concat((actor.first_name), ' ', actor.last_name);