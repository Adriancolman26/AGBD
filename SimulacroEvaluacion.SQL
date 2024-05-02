-- Ejercicio 1

SELECT title FROM film 
ORDER BY title ASC

-- Ejercicio 2

SELECT DISTINCT title, rating FROM film
ORDER BY rating ASC

-- Ejercicio 3

SELECT title, rental_rate FROM film
WHERE rating LIKE "%PG%" OR rating LIKE "%PG-13%"
ORDER BY rental_rate DESC, title ASC

-- Ejercicio 4

SELECT DISTINCT city, p.country from city c
JOIN country p ON c.country_id = p.country_id
GROUP BY country

-- Ejercicio 5 

SELECT COUNT(city) as cant_ciud, p.country FROM city c
JOIN country p on p.country_id = c.country_id
GROUP BY country
ORDER BY cant_ciud DESC

