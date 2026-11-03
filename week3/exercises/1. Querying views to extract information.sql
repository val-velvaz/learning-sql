-- Query the views to Extract information

-- Query the View_CustomerInvoices view to retrieve the top 10 customers by total amount spent in descending order.
SELECT TOP 10     
    CONCAT(FirstName, ' ', LastName) AS CustomerName,
    Customer AS TotalSpent
FROM View_CustomerInvoices
ORDER BY Customer DESC;

-- Query the Invoice Details view to retrieve the total amount
-- spent by country, and sorted the by country in
-- descending alphabetical order.