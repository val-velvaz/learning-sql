-- practicing COUNT

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