-- Act1 --

SELECT name, Composer, Milliseconds FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId
ORDER BY Milliseconds DESC

-- Act2 --

SELECT FirstName, LastName, Address, Country FROM costumers

-- Act3 --

SELECT name, Milliseconds FROM tracks WHERE Composer IS NULL AND Milliseconds > 2900000 

-- Act4 --

SELECT LastName, FirstName, Company FROM customers WHERE Company IS NOT NULL

-- Act5 --

SELECT DISTINCT BillingCity FROM invoices WHERE BillingState IS NOT NULL
ORDER BY BillingCity DESC

-- Act6 --

SELECT Title FROM albums WHERE Title like "%OF%"
ORDER BY Title ASC


-- Act7 --

SELECT t.name, a.name FROM tracks t
JOIN genres a ON t.TrackId = a.GenreId

-- Act8 --

SELECT name, Title FROM tracks a
JOIN albums t  ON a.AlbumId = t.AlbumId
ORDER BY name DESC	

