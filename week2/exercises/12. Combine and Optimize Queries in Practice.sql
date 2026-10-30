-- Task 1: Combining Transformations with Filtering
-- This query retrieves the names of customers who have spent more than $40 in total,
-- along with the total amount they spent, ordered by the total spent in descending order.

-- In the SELECT statement concatenate the FirstName and LastName to get the full name of the customer.
-- Then, get the total spent by each customer using SUM.
-- Join the Invoice table to get the total spent by each customer.
-- Group the results by the customer's first and last name to aggregate the total spent.
-- Filter the results to include only those customers who have spent more than $40.
-- Order the results by TotalSpent in descending order to see the highest spenders first.

SELECT 
    CONCAT(Customer.FirstName, ' ', Customer.LastName) AS CustomerFullName,
    SUM(Invoice.Total) AS TotalSpent 
FROM Customer 
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.FirstName, Customer.LastName
HAVING SUM(Invoice.Total) > 40
ORDER BY TotalSpent DESC;