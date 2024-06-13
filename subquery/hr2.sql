--1) Agregar dos regiones Afrca/Middle East

INSERT INTO regions(region_name)
VALUES ("Middle East"), ("Africa");

--2) Modificar para pasar los paises a las nuevas regiones

UPDATE countries SET region_id = (SELECT region_id FROM regions WHERE region_name like "Africa")
WHERE country_name IN ("Zambia", "Zimbabwe", "Egypt", "Nigeria")

UPDATE countries SET region_id = (SELECT region_id FROM regions WHERE region_name like "Middle East")
WHERE country_name IN ("Israel", "Kuwait")

--3) Borrar la region combinada

DELETE FROM regions
WHERE region_name = "Middle East and Africa"

--4) Agregar dos paises mas a cada una de las nuevas regiones

INSERT INTO countries (country_id, country_name, region_id)
VALUES ("CV", "Cabo Verde",(SELECT region_id FROM regions WHERE region_name LIKE "Africa")), 
       ("CM", "Cámerun",(SELECT region_id FROM regions WHERE region_name LIKE "Africa")),
       ("PA", "Palestina",(SELECT region_id FROM regions WHERE region_name LIKE "Middle East")),
       ("IR", "Irán",(SELECT region_id FROM regions WHERE region_name LIKE "Middle East"))

