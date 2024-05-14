-- Act4 --

SELECT name, address_street_name FROM person WHERE address_street_name LIKE 'Franklin Ave'
ORDER BY name ASC
LIMIT 1 OFFSET 43;