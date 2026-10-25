-- practicing the sum function in sql

-- geet the total of the invoices
/*
SELECT SUM(Invoice.Total)
FROM Invoice;
*/

-- get the total sume of the tracks by their unitprice
/*
SELECT SUM(Track.UnitPrice)
FROM Track;
*/

-- Get the total sum of the customer with id 6
/*
SELECT SUM(Total)
FROM Invoice
JOIN  Customer ON Customer.CustomerId = Invoice.CustomerId
WHERE Customer.CustomerId = 6;
*/

-- Get the total sum of customers invoice from germany

SELECT SUM(Invoice.Total)
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
WHERE Customer.Country = 'Germany';
