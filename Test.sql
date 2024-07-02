-- // ACT 1 \\ --

DELETE FROM employees
where department_id = (SELECT a.department_id from employees a
join departments d on a.department_id = d.department_id
join locations l on d.location_id = l.location_id
join countries c on l.country_id = c.country_id
where c.country_name = "Canada")

DELETE FROM departments
where location_id = (SELECT d.location_id from departments d
join locations l on d.location_id = l.location_id
join countries c on l.country_id = c.country_id
where c.country_name = "Canada")


DELETE from locations
where country_id = (SELECT l.country_id from locations l
join countries c on l.country_id = c.country_id
where c.country_name = "Canada")

DELETE FROM countries
where country_name = (SELECT c.country_name from countries c
where c.country_name = "Canada")

-- // ACT 2 \\ --

SELECT e.first_name, e.last_name , d.department_name, l.state_province, c.country_name FROM employees e 
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_id LIKE 'UK'
ORDER BY country_name;

-- // ACT 3 \\ --

DELETE FROM jobs
WHERE job_id NOT IN (SELECT DISTINCT job_id FROM employees);

-- // ACT 4 \\ --

SELECT j.job_title AS Titulo_Trabajo, count(e.employee_id) AS Cantidad_De_Empleados, AVG(e.salary) AS Salario_Promedio, min(e.salary) AS Salario_Minimo, max(e.salary) AS Salario_Maximo FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
GROUP BY job_title
HAVING count(e.employee_id) > 1;