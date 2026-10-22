/*
Get the first n rows from
a table

SYNTAX ---------------

SELECT TOP 5 FirstName, LastName
FROM Customer;
*/

-- Get the top 10 oldest employeers

/*
SELECT TOP 10 FirstName, LastName, HireDate
FROM Employee
ORDER BY HireDate ASC;
*/

-- Get the phone of the top 3 newest employeers
-- And their email
SELECT TOP 3 Phone, Email 
FROM Employee
ORDER BY HireDate DESC;

-- Get the birth date and HireDate of the 
-- top 7 oldest employeers
SELECT TOP 7 BirthDate, HireDate
FROM Employee
ORDER BY HireDate ASC;
