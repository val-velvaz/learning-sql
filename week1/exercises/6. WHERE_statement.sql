-- Demostration of Filtering Data with the WHERE Clause
-- Get all the customers located in paris

/*
SELECT FirstName, LastName
FROM Customer
WHERE City = 'Paris';
*/

-- Get all the customers that begin with the letter B
/*
SELECT FirstName, LastName
FROM Customer 
WHERE LastName LIKE 'B%';
*/
-- Get all the customers that end with 'son'
/*
SELECT FirstName, LastName
FROM Customer 
WHERE LastName LIKE '%son';
*/

-- Retrieve the Invoice ID where the total is greater than $5
-- using logical operators with WHERE
/*
SELECT InvoiceId, Total 
FROM Invoice 
WHERE Total > 5;
*/
-- Retrieve the first and last names of 
-- the customers that are located in Paris or Berlin
/*
SELECT FirstName, LastName
FROM Customer
WHERE City = 'Berlin' OR City = 'Paris';
*/

-- retrieve the customer id for individuals in paris 
-- with invoice totals greater than 1'
/*
SELECT CustomerId, BillingCity, Total 
FROM Invoice 
WHERE Total > 10 AND BillingCity = 'Paris';
*/

--Retrieve the invoice ID and invoice totals greater 
-- than $1.98 and less than 3.96
SELECT InvoiceId, Total 
FROM Invoice 
WHERE Total > 1.98 AND Total < 3.96 
ORDER BY Total ASC;