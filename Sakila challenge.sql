SELECT first_name, last_name FROM actor;
SELECT first_name, last_name FROM actor WHERE first_name='John';
SELECT first_name, last_name FROM actor WHERE last_name='Neeson';
SELECT first_name, last_name, actor_id FROM actor WHERE actor_id % 10 = 0;
SELECT title, description FROM film WHERE film_id=100;
SELECT title, rating FROM film WHERE rating='R';
SELECT title, rating FROM film WHERE rating!='R' ORDER BY rating;
SELECT title, length FROM film ORDER BY length LIMIT 10;
SELECT title, length FROM film ORDER BY length DESC;
SELECT title, special_features FROM film WHERE special_features LIKE '%Deleted Scenes%';
SELECT last_name, COUNT(*) FROM actor GROUP BY last_name HAVING COUNT(*)=1;
SELECT last_name, COUNT(*) FROM actor GROUP BY last_name HAVING COUNT(*)>1 ORDER BY COUNT(*) DESC;
SELECT a.actor_id, a.first_name, a.last_name, COUNT(*) AS num_of_films FROM actor a JOIN film_actor fa ON a.actor_id=fa.actor_id GROUP BY a.actor_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT f.title, DATE_ADD(r.rental_date, INTERVAL f.rental_duration DAY) AS date_due FROM rental r JOIN inventory i ON r.inventory_id=i.inventory_id JOIN film f ON i.film_id=f.film_id WHERE f.title='Academy Dinosaur' AND r.return_date IS NULL;
SELECT AVG(length) FROM film;
SELECT fc.category_id, AVG(f.length) FROM film_category fc JOIN film f ON f.film_id=fc.film_id GROUP BY fc.category_id;
SELECT title, description FROM film WHERE description LIKE '%robot%';
SELECT COUNT(film_id) FROM film WHERE release_year=2010;
SELECT f.title, c.name FROM film f JOIN film_category fc ON f.film_id=fc.film_id JOIN category c ON fc.category_id=c.category_id WHERE c.name='horror';
SELECT staff_id, first_name, last_name FROM staff WHERE staff_id=2;
SELECT a.actor_id, fa.film_id, f.title FROM actor a JOIN film_actor fa ON a.actor_id=fa.actor_id JOIN film f ON fa.film_id=f.film_id WHERE a.first_name='Fred' AND a.last_name='Costner';
SELECT COUNT(country_id) AS number_of_countries FROM country;
SELECT name FROM language ORDER BY name DESC;
SELECT first_name, last_name FROM actor WHERE last_name LIKE '%son' ORDER BY first_name;
SELECT c.name, COUNT(*) FROM category c JOIN film_category fc ON c.category_id=fc.category_id GROUP BY c.name ORDER BY COUNT(*) DESC LIMIT 1;