--- Act1 ---

SELECT title FROM film
ORDER BY title ASC

--- Act2 ---

SELECT DISTINCT rating FROM film
ORDER BY rating DESC

--- Act3 ---

SELECT title AS name, rating, rental_rate AS alquiler FROM film
ORDER BY alquiler DESC, name

--- Act4 ---

SELECT c.city AS Ciudad, m.country AS Pais FROM city c 
JOIN country m ON c.country_id = m.country_id
ORDER BY m.country_id DESC;

--- Act5 ---

SELECT m.country AS Pais, COUNT(c.city) AS Ciudad FROM city c 
JOIN country m ON c.country_id = m.country_id
GROUP BY country ORDER BY Ciudad DESC;

--ACT6 --
SELECT c.city AS Ciudades, co.country AS Paises FROM city c
JOIN country co ON co.country_id = c.country_id
GROUP BY country 
HAVING Ciudades > 2
ORDER BY Ciudades DESC;

--ACT7 --

SELECT MIN(return_date) AS FechaAntigua,MAX(return_date) AS FechaActual FROM rental;

--ACT8--

SELECT f.title AS NombreDeLasPelis, count(fa.actor_id) AS Actores FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY f.film_id
ORDER BY Actores DESC
LIMIT 10; 

--ACT 9 --

SELECT DISTINCT title AS NombreDeLasPelis,rental_duration AS terceraMasAlquilada FROM film
ORDER BY terceraMasAlquilada DESC
LIMIT 1 OFFSET 2;

--ACT 10 --

SELECT f.title AS nombreDeLasPelis,f.length AS Horas ,avg(fil.actor_id) AS promedioDeActor, max(fil.actor_id) as maximaCantidadDeActores
FROM film f
JOIN film_actor fil ON f.film_id = fil.film_id
WHERE f.length BETWEEN 90 AND 120 --BETWEEN(ENTRE TAL COSA...)--
GROUP BY f.film_id
ORDER BY f.length;
