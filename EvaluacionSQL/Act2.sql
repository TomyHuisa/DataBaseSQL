-- Act2 --

SELECT p.name, d.age, d.gender, d.plate_number, d.car_make, d.car_model 
FROM drivers_license d 
JOIN person p ON p.license_id = d.id
WHERE d.gender LIKE 'Male' AND d.age > 70
ORDER BY d.age ASC;