-- Act3 --

SELECT  d.gender AS Personas, count(p.license_id) AS Licencias FROM drivers_license d
LEFT JOIN person p ON p.license_id = d.id
GROUP BY license_id
ORDER BY Licencias DESC;