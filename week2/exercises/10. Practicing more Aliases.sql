/*
let's consider table aliases. Imagine you are working 
with the customers and invoices tables from the Chinook 
database. If you wanted to join these two tables to see 
which customers have made purchases, how would using 
short aliases for those table names help you write the 
query more efficiently?
*/

/*
SELECT  
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerFullName,
    COUNT(i.InvoiceId) AS InvoicesBought
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.FirstName, c.LastName, c.CustomerId;
*/

SELECT 
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerFullName,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeFullName
FROM Customer c   
JOIN Employee e ON e.EmployeeId = c.SupportRepId;