-- Practicing Functions for Transformations

-- Convert the first and last names to uppercase
/*
SELECT UPPER(FirstName), UPPER(LastName)
FROM Customer;
*/

-- round each total to two decimal places
-- and, order the total in descending order
/*
SELECT InvoiceId, ROUND(Total, 2)
FROM Invoice
ORDER BY ROUND(Total, 2) DESC;
*/

-- GET the four digit year of the invoicedate for all invoice ids
/*
SELECT InvoiceId, FORMAT(InvoiceDate, 'yyyy')
FROM Invoice;
*/
-- Calculates the average track time in minutes
SELECT AVG(Milliseconds)/60000
FROM Track;