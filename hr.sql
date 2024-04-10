1- select first_name, last_name, salary from employees
   where salary > 6000 

2- select first_name, last_name, department_name, l.city, l.state_province from employees t
   join departments d on t.department_id = d.department_id
   join locations l on d.location_id = l.location_id

3-