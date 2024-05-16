-- Listar el nombre de la persona y los 
-- datos del auto (marca, modelo y patente) de 
-- todos las mujeres de menos de 40 años, 
-- elegir el orden en que se muestran 

SELECT p.name, d.car_make, d.car_model, d.plate_number FROM drivers_license d
JOIN person p on d.id = p.license_id 
WHERE d.age < 40 AND d.gender = "female"