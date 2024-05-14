-- Act1 -- 

SELECT FirstName, LastName FROM employees
ORDER BY FirstName AND LastName DESC

-- Act2 --

SELECT FirstName, ReportsTo FROM employees WHERE ReportsTo IS NULL

-- ACT3 --

SELECT billingaddress, total FROM invoices
ORDER BY total DESC
LIMIT 5;

-- ACT4 --

SELECT t.name,t.AlbumId, t.Milliseconds FROM tracks t
WHERE t.AlbumId LIKE '5'; 

-- ACT5 --

SELECT g.Name AS nombreDelGenero ,count(t.TrackId) AS CantidadDeCanciones FROM genres g
JOIN tracks t ON g.GenreId = t.GenreId
GROUP BY g.GenreId;

-- ACT6 --

SELECT a.Title AS NombreDiscos, count(t.TrackId) AS Canciones 
FROM albums a
JOIN tracks t ON a.AlbumId = t.AlbumId
GROUP BY a.AlbumId
HAVING  count(t.TrackId) < 5;

-- ACT7 --

SELECT a.Title AS NombreDiscos, UnitPrice AS Precio
FROM albums a
JOIN tracks t ON a.AlbumId = t.AlbumId
GROUP BY a.AlbumId
ORDER BY UnitPrice DESC
LIMIT 10;

-- ACT8 --

SELECT t.Name AS NombreTema,g.Name AS NombreGenero,a.Title AS NombreDiscos, UnitPrice AS Precio
FROM albums a 
JOIN tracks t ON a.AlbumId = t.AlbumId
JOIN genres g ON g.GenreId = t.GenreId
WHERE t.UnitPrice LIKE '0.99';

-- ACT9 --

SELECT t.Name AS NombreTema,t.Milliseconds AS Duracion ,al.Title AS NombreDiscos, a.Name AS NombreArtista
FROM albums al 
JOIN artists a ON al.ArtistId = a.ArtistId
JOIN tracks t ON al.AlbumId = t.AlbumId
WHERE t.Milliseconds < 10000
LIMIT 20;

-- ACT10 --