1- SELECT * from crime_scene_report
    where type = "murder"

2- SELECT * from crime_scene_report 
    WHERE type = "murder" and city = "SQL City";

3- SELECT * from person    
    WHERE name like "Annabel%" and address_street_name = "Franklin Ave";

4- SELECT * from person 
    WHERE address_street_name = "Northwestern Dr"
    order by address_number desc

5- select * from interview 
    where person_id = "16371" or person_id = "14887"

6- select * from get_fit_now_member
	where membership_status = "gold" and id like "48Z%"

    select * from get_fit_now_member r join person f on r.id = f.license_id

-- sospechosos con auto

--1- Escuché un disparo y luego vi a un hombre salir corriendo. Tenía una bolsa de "Get Fit Now Gym". 
--   El número de membresía en la bolsa comenzaba con "48Z". Sólo los miembros de oro tienen esas bolsas. 
--   El hombre se subió a un coche con una placa que decía "H42W".
--2- Vi ocurrir el asesinato y reconocí al asesino en mi gimnasio cuando estaba haciendo ejercicio la semana pasada, el 9 de enero.