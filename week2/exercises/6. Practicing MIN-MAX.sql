-- practicing MIN/MAX

SELECT MIN(UnitPrice)
FROM Track;

-- ge the employeer with more time working
SELECT TOP 1 LastName, HireDate
FROM Employee
ORDER BY HireDate ASC;

-- get the customer with the higher total invoice
-- PENDING

