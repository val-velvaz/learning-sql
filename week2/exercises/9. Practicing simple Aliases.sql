-- Practicing simple Aliases

-- sum the total column and round the sum to two decimal places, 
-- and group the results by customer ID
SELECT CustomerId, ROUND(SUM(Total), 2) AS 'Total Sales'
FROM Invoice 
GROUP BY CustomerId;