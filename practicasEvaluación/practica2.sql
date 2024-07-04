-- 1- Nos informa que la empresa dejará de prestar operaciones en Canadá, 
--    por lo que nos solicitan que eliminemos todos los empleados, 
--    departamentos y locaciones pertenecientes a Canadá junto con el país.

DELETE FROM employees
WHERE department_id = 2

DELETE FROM departments
WHERE location_id = 1800

DELETE FROM locations
WHERE country_id = "CA"

DELETE FROM countries
WHERE country_name = "Canada"

-- 2- Nos solicitan un listado que contenga nombre, apellido, 
--    departamento y país de todos los elementos que trabajan en United Kingdom.

SELECT e.first_name, e.last_name, d.department_name, c.country_name FROM employees e
INNER JOIN departments d ON d.department_id = e.department_id
INNER JOIN locations l ON l.location_id = d.location_id
INNER JOIN countries c ON c.country_id = l.country_id
WHERE country_name = "United Kingdom"

-- 3- Eliminar todos los trabajos que no posean empleados asociados, 
--    la query tiene que tener la capacidad de eliminar los jobs que no posean empleados de una sola 
--    ejecución sin indicar de manera manual el número de jobs_id a eliminar.

DELETE FROM jobs 
WHERE job_id NOT IN(
	SELECT job_id FROM employees)

-- 4- Calcular la cantidad de personas, el sueldo promedio, 
--    mínimo y máximo de todos los puestos laborales (job_title), 
--    descartando aquellos que tengan un sólo empleado.