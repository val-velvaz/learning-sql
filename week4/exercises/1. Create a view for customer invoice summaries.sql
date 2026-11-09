-- 1. Create a view for customer Invoice Summaries
-- 1. Create a view named 'View_CustomerInvoices' that summarizes customer invoice data.
-- 2. Select the following columns to be included in the view:
--    a. Customer's first name as an alias.
--    b. Customer's last name as an alias.
--    c. Total number of invoices for each customer as an alias..
--    d. Total amount spent by each customer as an alias.
-- 3. Use a JOIN clause to combine data from the 'Customer' table and the 'Invoice' table.
-- 4. Group the results by the customer's first and last name to aggregate the data for each customer.

CREATE OR ALTER VIEW View_CustomerInvoices AS
SELECT 
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    COUNT(i.Total) AS TotalInvoices, 
    SUM(i.Total) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId 
GROUP BY
    c.FirstName, 
    c.LastName;