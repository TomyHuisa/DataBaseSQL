-- Act8 --

SELECT d.car_make, d.car_model, c.annual_income FROM drivers_license d
JOIN person p ON d.id = p.license_id
JOIN income c ON p.ssn = c.ssn
WHERE c.annual_income < 35000
ORDER BY annual_income ASC;