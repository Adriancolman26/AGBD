-- 1- Se necesita saber cuántos empleados hay en cada tipo de trabajo y cuanto se gasta en salarios, 
--    para esto nos solicita que creemos un listado de tres columnas donde indiquemos
--    el nombre del tipo de trabajor, la cantidad de empleados
--    y el gasto total en sueldos de empleados por tipo de trabajo
--    y necesita tenerla ordenada por cantidad de empleados.

SELECT j.job_title, COUNT(e.employee_id) AS cant_empleados, sum(e.salary) AS gasto_salarios FROM employees e
JOIN jobs j on j.job_id = j.job_id
GROUP BY j.job_title
ORDER BY e.salary DESC;

-- 2- Nos solicita un listado que contenga nombre, apellido, 
--    tipo de trabajo y departamento todos los empleados.

SELECT e.first_name, last_name, j.job_title, d.department_name FROM employees e
JOIN jobs j on j.job_id = j.job_id
JOIN departments d on d.department_id = d.department_id


-- 3- El encargado del departamento de ventas nos informó que detecto que hay algunos empleados
--    que no poseen un número de teléfono cargado, nos solicitó que le pasemos la lista
--    de aquellos empleados que no tienen cargado un número de teléfono, esta lista debe 
--    estar confeccionada por id de empleado, nombre, apellido, correo electrónico,
--    número de teléfono y id de departamento. Y que por favor le carguemos momentáneamente
--    el numero de la empresa (303.404.505) para evitar tener valores null en esos campos.

UPDATE employees SET phone_number = "303.404.505"
WHERE phone_number is NULL;

SELECT employee_id, first_name, last_name, email, phone_number, department_id FROM employees 
WHERE phone_number = "303.404.505"

-- 4- Debido a una politica de mejora de sueldos nos solicitan que incrementemos un 35% el salario
--    de todos los empleados que cobren menos de 8000 y que trabajen de
--    programadores o empleados de contador (Accountant).

UPDATE employees set salary = salary * 0.35
WHERE salary < 8000 and job_id IN (SELECT job_id FROM jobs
WHERE job_title = "Programmer" or job_title = "Accountant")


-- 5- Nos informan de la creación de un nuevo departamento dentro de la empresa que tendrá el 
--    nombre consultants, este está en la locación ubicada en ‘2004 Charade Rd’ de Seattle y
--    y un nuevo tipo de trabajo de nombre ‘consultant’. adicionalmente nos envió la información
--    de estos 3 consultores que deben cargarse perteneciendo a este 
--    nuevo departamento y tipo de trabajo: 
--    El ID de la locación para la primera parte del ejercicio debe obtenerse utilizando sub consultas.


INSERT INTO departments (department_name, location_id)
VALUES ('Consultants', (SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd' AND city = 'Seattle'));

INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES ('Consultant', 4000, 12000);

INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, salary, job_id, department_id, manager_id)
VALUES('Raul', 'Lopez', 'rlopez@gmail.com', '1.231.231.122', '2024-06-27', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       100),
	  ('Andres', 'Gonzalez', 'agonzalez@gmail.com', '1.231.231.122', '2024-06-27', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       100),
	  ('Laura', 'Fernandez', 'lfernandez@gmail.com', '1.231.231.122', '2024-06-27', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       100);

-- 6- Nos informa que la empresa dejara de prestar operaciones en Canada,
--    por lo que nos solicitan que eliminemos todos los empleados, departamentos y locaciones 
--    pertenecientes a Canada junto con el pais.

DELETE FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id IN ( SELECT location_id FROM locations WHERE country_id = ( SELECT country_id FROM countries WHERE country_name = 'Canada')));

DELETE FROM departments
WHERE location_id IN (SELECT location_id FROM locations WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada'));

DELETE FROM locations
WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada');

DELETE FROM countries
WHERE country_name = 'Canada';
