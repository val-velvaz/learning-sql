/*
Get an offset number of rows
from a table

SELECT CustomerId, LastName
FROM Customer
ORDER BY CustomerId
OFFSET 10 ROWS FETCH NEXT 5 ROWS
ONLY;
*/

-- They celebrated the top 5 oldest employeer
-- with the highest price, however, the next
-- 20 oldest employeers will receive a different
-- kind of award. Who will they be?

SELECT FirstName, LastName, HireDate
FROM Employee
ORDER BY HireDate DESC
OFFSET 5 ROWS FETCH NEXT 20 ROWS
ONLY;
