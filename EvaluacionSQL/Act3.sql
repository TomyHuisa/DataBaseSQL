-- Act3 --

SELECT  p.name AS Personas, d.gender AS Genero, count(p.license_id) AS Licencias FROM drivers_license d
LEFT JOIN person p ON p.license_id = d.id
GROUP BY license_id
ORDER BY Licencias DESC
LIMIT 1 OFFSET 10006;