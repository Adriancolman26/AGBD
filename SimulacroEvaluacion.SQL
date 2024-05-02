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



