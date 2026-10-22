-- Get two columns from a table
-- displayed in ascending order

/* SYNTAX
SELECT FirstName, LastName
FROM Customer
ORDER BY LastName ASC;
*/

-- Get all the genres in ascending order according
-- to their name alphabetically
/*
SELECT *
FROM Genre
ORDER BY Name ASC;
*/

-- Get all the tracks ordered in ascending order
-- according to their composer
/*
SELECT * 
FROM Track
ORDER BY Composer ASC;
*/

-- Get all the tracks from most expensive to the cheapest
-- Show just the tracks and price
/*
SELECT Name, UnitPrice
FROM Track
ORDER BY UnitPrice DESC;
*/
-- Get tracks that order by the most Bytes 
-- and retrieve their 
-- Media TypeId

SELECT Name, Bytes, MediaTypeId
FROM Track
ORDER BY Bytes; 