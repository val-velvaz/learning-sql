-- Practicing getting two or more columns from a table

/* 
SYNTAX
SELECT Country
FROM Customer;
*/

-- Get all the Hire dates AND the last name of the employeers
-- SELECT HireDate, LastName FROM Employee;

-- Get all the City and the Address of the Employeers
-- SELECT City, Address FROM Employee;

-- Gett all BirthDate and FirstNames of the Employeers
-- SELECT BirthDate, FirstName FROM Employee;

-- Get the full name and who report to of the employeers
-- SELECT FirstName, LastName, ReportsTo FROM Employee;

-- Get what title adam has
SELECT Title FROM Employee Where LastName = 'Adams';

-- Hmmmm that is why he doesn't report to anyone