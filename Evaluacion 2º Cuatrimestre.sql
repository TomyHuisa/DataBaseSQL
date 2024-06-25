-- Act 1 --

SELECT d.department_name AS NombreDeDepartamento, count(employee_id) AS Empleados, sum(e.salary) AS SalarioGastadoTotal FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY Empleados DESC

-- Act 2--

SELECT e.first_name, e.last_name , d.department_name, l.state_province, c.country_name FROM employees e 
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_id LIKE 'US'
ORDER BY country_name

-- Act 3--

SELECT employee_id, first_name, last_name, email, phone_number, department_id FROM employees
WHERE phone_number IS NULL
ORDER BY employee_id ASC;

UPDATE employees 
SET phone_number = '111.222.3344' 
WHERE phone_number IS NULL;

-- Act 4--

UPDATE employees
SET salary = salary * 1.2
WHERE salary < 8000

-- Act 5--

--|Sin Terminar|--
--|Complejo|--

-- Act 6--

DELETE FROM employees WHERE employee_id in (SELECT e.employee_id FROM employees e 
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_id LIKE 'DE');

DELETE FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id LIKE 'DE');

-- Act 7--

--|Sin Terminar|--
--|Sin Tiempo y Complejo|--
