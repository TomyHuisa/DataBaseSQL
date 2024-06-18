-- Act1 --
-- Agregar nuevas regiones --
-- África --

INSERT INTO regions(region_id, region_name)
VALUES ('5' , 'África') 

-- Middle East --

INSERT INTO regions(region_id, region_name)
VALUES ('6' , 'Middle East') 

-- Act2 --
-- Actualizar los paises a las nuevas regiones --

UPDATE countries
SET region_id = '?'
WHERE country_id = '?';

-- Act3 --
-- Erradicar Region en la que estaban anteriormente --

DELETE FROM regions WHERE region_name = 'Middle East and Africa';

-- Act4 --
-- Agregar nuevos paises --
-- África --

INSERT INTO countries(region_id, country_name, country_id)
VALUES ('?' , '?' ,'?')

-- Middle East --

INSERT INTO countries(region_id, country_name, country_id)
VALUES ('?' , '?' ,'?')

-- Act5 --
-- Agregar la region anteriormente eliminada --

INSERT INTO regions(region_id, region_name)
VALUES ('6' , 'Middle East and Africa') 

-- Act6 --
-- Movilizar los paises de Middle East y África --
--// EN PROCESO \\--
SELECT country_id
      ,country_name
      ,region_id
FROM  countries
WHERE region_id
      IN (SELECT region_id
            FROM countries
          WHERE  region_id Like '4')