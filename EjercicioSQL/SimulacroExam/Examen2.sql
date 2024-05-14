--- ACT1 ---|

SELECT department_name FROM departments
ORDER BY department_name ASC;

--- ACT2 ---|

SELECT DISTINCT salary AS salario FROM employees
ORDER BY salary DESC;

--- ACT3 ---|

SELECT job_title AS puestoDeTrabajo FROM jobs WHERE job_title LIKE "%Manager%"
ORDER BY job_title DESC;

--- Act4 ---|

SELECT c.country_name AS Pais, r.region_name AS Region FROM countries c
JOIN regions r ON c.region_id = r.region_id
ORDER BY r.region_name , c.country_name

--- Act5 ---|

SELECT DISTINCT e.first_name , e.last_name , d.department_name , e.salary  FROM employees e  
JOIN departments d ON d.department_id = e.department_id
WHERE salary > 9000 AND salary < 17000
ORDER BY  e.salary

--- Act6 ---|

SELECT r.region_name AS Region, count(c.country_name) AS Paises FROM countries c
JOIN regions r ON c.region_id = r.region_id
GROUP BY r.region_name
HAVING count(c.country_name) > 5

--- Act7 ---|

SELECT MIN(hire_date) AS Fecha_De_Ingresos_Antigua, MAX(hire_date) AS Fecha_De_Ingresos_Actual FROM employees

--ACT8 --
SELECT e.first_name AS nombresDeLosEmpleados ,e.last_name AS apellidosDeLosEmpleados, count(d.relationship) AS cantidadDeHijos 
FROM employees e 
JOIN dependents d ON e.employee_id = d.employee_id 
GROUP BY nombresDeLosEmpleados, apellidosDeLosEmpleados 
ORDER BY cantidadDeHijos DESC
LIMIT 5;

--- Cambios ambos están correctos---

SELECT e.first_name AS nombresDeLosEmpleados ,e.last_name AS apellidosDeLosEmpleados, count(d.relationship) AS cantidadDeHijos 
FROM employees e 
JOIN dependents d ON e.employee_id = d.employee_id 
GROUP BY e.employee_id --- Es mejor agrupar por la id de los empleados que por los nombres.---
LIMIT 5;

--ACT9 --

SELECT first_name AS nombreDelEmpleado,salary AS salarioDelTercerMejorEmpleado FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

--ACT10 --

SELECT e.first_name AS nombresDeLosEmpleados, avg(d.relationship) AS promedio, max(d.relationship) as maximaCantidadDeHijos 
FROM employees e 
JOIN dependents d ON e.employee_id = d.employee_id 
GROUP BY nombresDeLosEmpleados
ORDER BY maximaCantidadDeHijos DESC;

-- Falta aprender un nuevo codigo para completarlo --

