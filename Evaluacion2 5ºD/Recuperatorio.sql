--1
-- Se necesita saber cuántos empleados hay en cada tipo de trabajo y cuanto se gasta en salarios, 
-- para esto nos solicita que creemos un listado de tres columnas donde indiquemos el nombre del tipo 
-- de trabajo, la cantidad de empleados y el gasto total en sueldos de empleados por tipo de trabajo 
-- y necesita tenerla ordenada por cantidad de empleados.

SELECT 
    jobs.job_title,
    COUNT(employees.employee_id) AS employee_count,
    SUM(employees.salary) AS total_salary
FROM 
    employees
JOIN 
    jobs ON employees.job_id = jobs.job_id
GROUP BY 
    jobs.job_title
ORDER BY 
    employee_count DESC;

--2
-- Nos solicita un listado que contenga nombre, apellido, tipo de trabajo 
-- y departamento de todos los empleados y la ciudad.

SELECT 
    employees.first_name,
    employees.last_name,
    jobs.job_title,
    departments.department_name,
    locations.city
FROM 
    employees
JOIN 
    jobs ON employees.job_id = jobs.job_id
JOIN 
    departments ON employees.department_id = departments.department_id
JOIN 
    locations ON departments.location_id = locations.location_id;

--3
-- Debido a una política de mejora de sueldos nos solicitan que incrementemos un 55% el salario de todos
-- los empleados que cobren menos de 7500 y pertenezcan al departamento de IT o Financiero (finance)


UPDATE employees set salary = salary * 1.55
WHERE salary < 7500 and department_id IN (SELECT department_id FROM departments
WHERE department_name = "Finance" or department_name = "IT")

--4
-- Nos informa que la empresa dejará de prestar operaciones en Canadá, 
-- por lo que nos solicitan que eliminemos todos los empleados, departamentos y locaciones 
-- pertenecientes a Canadá junto con el país.

DELETE FROM employees
WHERE department_id = 2

DELETE FROM departments
WHERE location_id = 1800

DELETE FROM locations
WHERE country_id = "CA"

DELETE FROM countries
WHERE country_name = "Canada"

--5
-- Nos solicitan actualizar el número de teléfono de los gerentes de ventas que no tengan un numero de 
-- telefono asociado, se debe registrar el número ‘333.444.555’



UPDATE employees SET phone_number = "333.444.555"
WHERE phone_number is NULL;

--6
-- Nos informan de la creación de un nuevo departamento dentro de la empresa que tendrá el nombre 
-- consultants, este está en la locación ubicada en ‘2004 Charade Rd’ de Seattle y 
-- un nuevo tipo de trabajo de nombre ‘consultant’. adicionalmente nos envió la información 
-- de estos 3 consultores que deben cargarse perteneciendo a este nuevo departamento y tipo de trabajo

INSERT INTO departments (department_name, location_id)
VALUES ('Consultants', (SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd' AND city = 'Seattle'));

INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES ('Consultant', 4000, 12000);

INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, salary, job_id, department_id, manager_id)
VALUES('Raul', 'Lopez', 'rlopez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       105),
         ('Andres', 'Gonzalez', 'agonzalez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       106),
         ('Laura', 'Fernandez', 'lfernandez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       107);
