-- División

INSERT INTO Division("Año", "Curso")
VALUES (5, "D"),
	   (5, "B");	


-- Profesores

INSERT INTO Profesor(Nombre, Apellido)
VALUES ("Enrico", "Rovaletti"), 
	   ("Nahuel", "Aruni"),
	   ("Thomas", "Mayorga"),
	   ("Andrés", "Navarro"),
	   ("Federico", "Villace"),
	   ("Maximiliano", "Urso"),
	   ("Eduardo", "Mestrovich"),
	   ("José", "Albornoz"),
	   ("Alejandro", "Salomón");


-- Materias

INSERT INTO Materia(Nombre, Año)
VALUES ("Diseño multimedial", 5),
	   ("Diseño de software", 5),
	   ("Programación WEB", 5),
	   ("Administración y gestion de base de datos", 5),
	   ("Dispositivos electricos programables", 5),
	   ("Redes de datos", 5);


-- Asignaciones

INSERT INTO Asignacion(Division_id, Profesor_id, Materia_id)
	VALUES((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Rovaletti"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Diseño multimedial")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Rovaletti"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Diseño multimedial")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Aruni"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Diseño multimedial")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Aruni"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Diseño multimedial")),

		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Navarro"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Diseño de software")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Navarro"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Diseño de software")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Mayorga"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Diseño de software")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Mayorga"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Diseño de software")),
		  
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Villace"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Programación WEB")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Villace"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Programación WEB")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Mayorga"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Programación WEB")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Mayorga"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Programación WEB")),
		  
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Navarro"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Administración y gestion de base de datos")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Navarro"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Administración y gestion de base de datos")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Mayorga"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Administración y gestion de base de datos")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Mayorga"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Administración y gestion de base de datos")), 

		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Urso"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Dispositivos electricos programables")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Urso"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Dispositivos electricos programables")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Mestrovich"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Dispositivos electricos programables")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Mestrovich"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Dispositivos electricos programables")),
		  
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Albornoz"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Redes de datos")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Albornoz"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Redes de datos")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "D"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Salomón"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Redes de datos")),
		  ((SELECT Division_id FROM Division WHERE Año LIKE 5 AND Curso LIKE "B"),(SELECT Profesor_id FROM Profesor WHERE Apellido LIKE "Salomón"),(SELECT Materia_id FROM Materia WHERE Nombre LIKE "Redes de datos"));


-- Profesores faltantes

INSERT INTO Profesor(Nombre, Apellido)
VALUES ("Adrián", "Corvalan"),
	   ("Guillermo", "Cúneo");

-- Sin subqueries

UPDATE Asignacion SET Profesor_id = 12
WHERE Materia_id = 4 AND Profesor_id = 4; 

-- Con subqueries

UPDATE  asignacion  set profesor_id =(SELECT profesor_id FROM profesor WHERE apellido LIKE "cuneo")
WHERE materia_id = "4" AND profesor_id = "4" 