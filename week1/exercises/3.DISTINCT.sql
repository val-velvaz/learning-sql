/*
Get a unique list from a tabñe
SELECT DISTINCT State
FROM Customer;
*/

-- Get all the different type of media based by name
/*
SELECT DISTINCT Name 
FROM MediaType;
*/

-- Get all the diferent types of genres
-- based on its name
/*
SELECT DISTINCT Name 
FROM Genre;
*/

-- Get all the different types of unit prices
-- order them from the most expensive to the
-- cheapest
/*
SELECT DISTINCT UnitPrice
FROM InvoiceLine 
ORDER BY UnitPrice DESC;
*/
-- Get all different composers in the tracks
-- Order them by their names in ascending order

SELECT DISTINCT Composer 
FROM Track 
ORDER BY Composer ASC;