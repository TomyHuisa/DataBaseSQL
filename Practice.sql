--(1)--
-- Listar el nombre de todos los empleados 
-- junto al nombre de departamento que pertenece, el estado o provincia, su sueldo y el nombre de su manager
-- ordenarlo por sueldo

SELECT m.first_name, m.last_name, e.first_name, e.last_name, e.salary, d.department_name, l.state_province, c.country_name, r.region_name  FROM employees e
JOIN departments d ON d.department_id = e.department_id
JOIN locations l ON l.location_id = d.location_id
JOIN countries c ON c.country_id = l.country_id
JOIN regions r ON r.region_id = c.region_id
JOIN employees m ON e.employee_id = m.manager_id
ORDER BY e.salary DESC

--(2)--
--reducir el salario mínimo y máximo de cada trabajo un 25%.
  
UPDATE jobs
SET max_salary =  max_salary*0.75 , min_salary = min_salary*0.75

--(3)--
--Eliminar aquellos trabajadores que cobren sobre el salario máximo de su tipo de trabajo.

DELETE FROM employees WHERE salary in (SELECT e.salary FROM employees e
JOIN jobs j on e.job_id = j.job_id
WHERE e.salary > j.max_salary);
