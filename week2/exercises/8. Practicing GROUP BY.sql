-- PRACTICING GROUP BY

-- show how many customers there are in each country.
-- Order in descending order

/*
SELECT Country, COUNT(*) AS NumClients
FROM Customer 
GROUP BY Country 
ORDER BY NumClients DESC;
*/

-- Show the customerid and how many invoices each customer has
/*
SELECT CustomerId, COUNT(*) AS NumInvoices
FROM Invoice
GROUP BY CustomerId;
*/

-- show the total of the invoices per billing country rounded to two decimals
-- order by descending order
/*
SELECT Invoice.BillingCountry, ROUND(SUM(Invoice.Total), 2) AS TotalInvoices
FROM Invoice 
GROUP BY Invoice.BillingCountry
ORDER BY TotalInvoices DESC; 
*/

-- show how many tracks exist for each media type in the table track
/*
SELECT Track.MediaTypeId, COUNT(*) AS TrackNum
FROM Track
GROUP BY Track.MediaTypeId
ORDER BY TrackNum DESC;
*/

-- For each GenreId in Track, show the minimum price, maximum and its average
/*
SELECT Track.GenreId, 
    MIN(Track.UnitPrice) AS MinPrice,
    MAX(Track.UnitPrice) AS MaxPrice,
    ROUND(AVG(Track.UnitPrice), 2) AS AvgPrice
FROM Track 
GROUP BY GenreId;
*/
