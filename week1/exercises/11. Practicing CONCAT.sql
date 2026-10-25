-- practicing CONCAT 

-- concatenate the first and last name of emplooyers
/*
SELECT CONCAT(FirstName, ' ', LastName)
FROM Employee;
*/

-- concatenate the first and last name of customers
/*
SELECT CONCAT(FirstNAme, ' ', LastName)
FROM Customer;
*/

-- concatenate the track name with the media name, use in between the word 'in'
/*
SELECT CONCAT(Track.Name, ' in ', MediaType.Name)
FROM Track
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId;
*/

-- concatenate the album name with the artist,
-- use the word 'by' in between
/*
SELECT CONCAT(Album.Title, ' by ', Artist.Name)
FROM Album 
JOIN Artist ON Album.ArtistId = Artist.ArtistId
ORDER BY Album.Title ASC;
*/

-- concatenate the customers and their cities
-- use "is from" to concatenate

SELECT CONCAT (Customer.LastName, ' is from ', Customer.City)
FROM Customer
ORDER BY Customer.LastName ASC;
