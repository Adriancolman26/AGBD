--2) Inserts de usuario y post (2 usuarios con 3 posts cada uno)

-- Usuario

INSERT INTO user ("username", "password")
VALUES ("Nieto911", "SanLochico"), ("James", "McQueen5")

-- Post

INSERT INTO post(author_id, title, body)
VALUES ((SELECT id FROM user WHERE username LIKE "Nieto911"), "mi unica Grandeza", "Libertadores 2014"),
	   ((SELECT id FROM user WHERE username LIKE "Nieto911"), "5to grande", "titulos nacionales"),
	   ((SELECT id FROM user WHERE username LIKE "Nieto911"), "Rival", "Huracan"),
	   ((SELECT id FROM user WHERE username LIKE "James"), "Mist", "ventas"),
	   ((SELECT id FROM user WHERE username LIKE "James"), "Club de fans", "cantidad de fans"),
	   ((SELECT id FROM user WHERE username LIKE "James"), "Libros", "numero de lanzamiento")

--3) Agregar un usuario nuevo con la contraseña de alguno de los usuarios ya creados (usando subquery buscando el usuario por nombre)

INSERT INTO user("username", "password")
VALUES ("Bareiro",(SELECT password FROM user WHERE username like "Nieto911"))

--4) Actualizar todos los posts de un usuario (seleccionado con subquery por nombre) y poner el cuerpo del post en texto vacío ("").

UPDATE post SET body = ""
WHERE author_id = (SELECT id FROM user WHERE username LIKE "Nieto911")

--5) Borrar un usuario que tenga posts, haciendo primero un DELETE con subquery que borre todos los post de ese usuario.

DELETE FROM post
WHERE author_id = (SELECT id FROM user WHERE username LIKE "Nieto911")

DELETE FROM user
WHERE id = (SELECT id FROM user WHERE username LIKE "Nieto911")