-- practicing COUNT
/*
-- Count the number of Employeers
SELECT COUNT(Employee.LastName)
FROM Employee;
-- Count the number of customers
SELECT COUNT(LastName)
FROM Customer;
-- Count the number of tracks
SELECT COUNT(Name)
FROM Track;
-- Count the number of Albums
SELECT COUNT(Title)
FROM Album;
-- Count the number of invoices 
SELECT COUNT(InvoiceId)
FROM Invoice;
*/
-- MORE COMPLEX QUERIES

/*
SELECT COUNT(Track.TrackId)
FROM Track 
WHERE Name LIKE 'a%';

SELECT Track.Name
FROM Track 
WHERE Name LIKE 'a%';
*/

-- count the employeers  born before 1965
/*
SELECT COUNT(Employee.LastName)
FROM Employee
WHERE Employee.BirthDate < '1965-01-01';

SELECT Employee.BirthDate
FROM Employee;
*/

-- Count the number of customers in germany
/*
SELECT COUNT(Customer.CustomerId)
FROM Customer
WHERE Customer.Country = 'Germany';

SELECT LastName, Country 
FROM Customer
WHERE Customer.Country = 'Germany';
*/