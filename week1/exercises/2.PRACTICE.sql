-- practicing filtering data with WHERE

-- Get all the Customers that work in apple inc.
/*
SELECT FirstName, LastName 
FROM Customer 
WHERE Company = 'Apple Inc.';
*/

-- Get all the customers in Germany cities
/*
SELECT DISTINCT City 
FROM Customer
WHERE Country = 'Germany';
*/

-- Get all the customers in frankfurt
/*
SELECT FirstName, LastName 
FROM Customer 
WHERE City = 'Frankfurt';
*/

-- Get all the customers names that begins with A or B
/*
SELECT FirstName, LastName 
FROM Customer 
WHERE LastName LIKE 'A%' OR LastName LIKE 'B%';
*/

-- Get all the traks that have the word "love" in the title
/*
SELECT Name 
FROM Track
WHERE Name LIKE '%love%';
*/

-- Get the genre id for classical music
/*
SELECT GenreId
FROM Genre
WHERE Name = 'Classical';
*/

-- Get the media type for the id 3
/*
SELECT Name
FROM MediaType
WHERE MediaTypeId = 3;
*/

-- Get the playlist name where the id is equal to 7
/*
SELECT Name 
FROM Playlist 
WHERE PlaylistId = 7;
*/

-- Get all the tracks that arent rock
/*
SELECT Name 
FROM Track 
WHERE NOT Name = 'Rock';
*/

-- Get all the tracks of a bytes size > 5000000 and begin with A
-- and have the word love in the title

SELECT Name, Bytes 
FROM Track 
WHERE Bytes > 5000000 
    AND Name LIKE 'A%'
    AND Name LIKE '%love%';


