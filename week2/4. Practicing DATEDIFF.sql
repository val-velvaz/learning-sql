-- practicing datediff

SELECT DATEDIFF(day, '2022-01-01', '2023-01-01')


SELECT CONCAT(
    FirstName,
    ' ',
    LastName,
    ' has worked for ',
    DATEDIFF(DAY, HireDate, GETDATE()),
    ' days'
)
FROM Employee;