-- Ejercicios de INSERT

-- 1 Artista

INSERT INTO  artists (name)
VALUES ("Luis Miguel")

-- 1 Album

INSERT INTO albums (Title, ArtistId)
VALUES ("Un sol", 276);

-- 3 canciones

INSERT INTO tracks(Name, AlbumId, MediaTypeId, Milliseconds, UnitPrice)
VALUES ("Hay un algo", 351, 4, 180000, 2),
       ("La Bikina", 351, 4, 210000, 2), 
       ("Te necesito", 351, 4, 240000, 2);

-- Ejercicio de UPDATE

UPDATE tracks SET Composer =  "Luisito Rey", UnitPrice = "3"
	WHERE AlbumId = "351"

-- Ejercicio de DELETE 

-- Borrar las canciones
DELETE FROM tracks
	WHERE TrackId = "3506" or TrackId = "3505" or TrackId = "3504";


-- Borrar el album
DELETE FROM albums
	WHERE AlbumId = "351";

--Borrar el artista
DELETE FROM artists
	WHERE ArtistId = "276";



