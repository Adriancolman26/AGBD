-- Ejercicio 1  

1 -  SELECT department_name FROM departments         
     ORDER BY department_name ASC

-- Ejercicio 2

2 - SELECT DISTINCT salary FROM employees         
    ORDER BY salary DESC.

-- Ejercicio 3

3 - SELECT DISTINCT job_title, max_salary, min_salary FROM jobs  
    WHERE job_title LIKE "%manager"    
    ORDER BY max_salary DESC, min_salary DESC  

-- Ejercicio 4 

4 - SELECT c.country_name, r.region_name  FROM countries c
    JOIN regions r on r.region_id = c.region_id
    ORDER BY region_name ASC

-- Ejercicio 5

5 - SELECT e.first_name, e.last_name, e.salary, d.department_name FROM employees e
    JOIN departments d on d.department_id = e.department_id
    WHERE e.salary BETWEEN 9000 and 17000 
    ORDER BY e.salary DESC

-- Ejercicio 6

6 - SELECT count(*) as Cant_Paises, r.region_name FROM countries c
    JOIN regions r on r.region_id = c.region_id
    GROUP BY r.region_id
    HAVING Cant_Paises > 5 