
/*
SELECT FirstName, LastName
FROM Customer
ORDER BY LastName ASC;
*/

/*
SELECT Name 
FROM Track 
ORDER BY UnitPrice DESC;
*/

/*
SELECT  InvoiceId, Customer.CustomerId
FROM Customer 
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Country = 'Germany'
ORDER BY Total DESC;
*/

SELECT MediaType.MediaTypeId, Track.Name 
FROM MediaType
JOIN Track ON Track.MediaTypeId = MediaType.MediaTypeId
ORDER BY MediaType.MediaTypeId, Track.Name;
