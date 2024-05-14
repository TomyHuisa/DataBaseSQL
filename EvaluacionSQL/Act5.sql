-- Act5 --

SELECT d.gender AS Genero, AVG(d.age) AS Edad_Promedio, MAX(d.age) AS Edad_Maxima, MIN(d.age) AS Edad_Minima
FROM drivers_license d 
JOIN person p ON p.license_id = d.id
WHERE d.gender LIKE 'Female'
GROUP BY d.gender;