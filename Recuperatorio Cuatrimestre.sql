/* ACT 1
  Se necesita saber cuántos empleados hay en cada tipo de trabajo y cuanto se gasta en salarios, 
  para esto nos solicita que creemos un listado de tres columnas donde 
  indiquemos el nombre del tipo de trabajador, 
  la cantidad de empleados y el gasto total en sueldos de empleados por tipo de trabajo 
  y necesita tenerla ordenada por cantidad de empleados
*/

SELECT j.job_title AS Titulo_Trabajo, count(e.employee_id) AS Cantidad_De_Empleados, sum(e.salary) AS Salario_Total FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY Cantidad_De_Empleados DESC

/* ACT 2
  Nos solicita un listado que contenga 
  nombre, apellido, tipo de trabajo y departamento de todos los empleados y la ciudad.
*/

SELECT e.first_name AS Nombre, e.last_name AS Apellido, j.job_title AS Puesto_De_Trabajo, d.department_name AS Nombre_De_Apartamento, c.country_name AS Pais FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id

/* ACT 3
  Debido a una política de mejora de sueldos nos solicitan que incrementemos un 55% el salario de todos
  los empleados que cobren menos de 7500 y pertenezcan al departamento de IT o Financiero (finance)
*/

UPDATE employees 
SET salary = salary*1.55 
WHERE salary < 7500 or department_id = 6 or department_id = 10;

/* ACT 4
  Nos informa que la empresa dejará de prestar operaciones en Canada,
  por lo que nos solicitan que eliminemos todos
  los empleados, departamentos y locaciones pertenecientes a Canada junto con el país.
*/

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


/* ACT 5
  Nos solicitan actualizar el número de teléfono de los gerentes de ventas 
  que no tengan un numero de telefono asociado, se debe registrar el numero ‘333.444.555
*/

UPDATE employees
SET phone_number = '333.444.555'
WHERE job_id = phone_number IS NULL;

/* ACT 6
  Nos informan de la creación de un nuevo departamento 
  dentro de la empresa que tendrá el nombre consultants,
  este está en la locación ubicada en ‘2004 Charade Rd’ de Seattle
   y un nuevo tipo de trabajo de nombre ‘consultant’. 
   adicionalmente nos envió la información de estos 3 consultores 
   que deben cargarse perteneciendo a este nuevo departamento y tipo de trabajo:
*/

INSERT INTO departments (department_name, location_id)
VALUES ('consultants', '1700');

INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES ('consultant', '5600.0', '11000.0');

INSERT INTO employees(first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES ('Raul','Lopez','rlopez@gmail.com','334.445.556','2024-07-01','20','5000','105','12'),
('Andres','Gonzalez','agonzalez@gmail.com','334.445.556','2024-07-01','20','6000','106','12'),
('Laura','Fernandez','lfernandez@gmail.com','334.445.556','2024-07-01','20','7500','107','12');