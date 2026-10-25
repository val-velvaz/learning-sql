-- Practicing JOIN queries

-- INNER JOIN Customer with Invoice
/*
SELECT FirstName, LastName
FROM Customer 
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId;
*/

-- Inner join the invoiceid total with the customers
/*
SELECT 
    Customer.FirstName,
    Customer.LastName,
    Invoice.Total
FROM Customer 
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId;
*/

-- inner join artist with album, show the name of the artist and their albums
/*
SELECT 
    Artist.Name,
    Album.Title
FROM Album 
JOIN Artist ON Artist.ArtistId = Album.ArtistId
*/

-- inner join track and the media typ with the mediatypeod
/*
SELECT 
    MediaType.Name,
    Track.Name
FROM Track 
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId;
*/

-- PRACTICING LEFT JOINS
/*
SELECT 
    Artist.Name,
    Album.Title 
FROM Album 
LEFT JOIN Artist ON Album.ArtistId = Artist.ArtistId;
*/

-- obtain the Employeers that can assist a customer based 
-- if the customer is on the same country as the employeer


SELECT 
    Employee.Country,
    Employee.FirstName,
    Employee.LastName,
    Customer.Country,    Customer.FirstName,
    Customer.LastName
FROM Employee
LEFT JOIN Customer ON Employee.Country = Customer.Country; 