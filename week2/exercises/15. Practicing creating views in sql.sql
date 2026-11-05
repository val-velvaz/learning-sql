-- This code creates a SQL View named 'View_CustomerInvoices' that provides a summary of customer invoice data.
-- 1. Define the view name as 'View_CustomerInvoices' using the CREATE VIEW statement.
-- 2. Select the following columns to be included in the view:
--    a. Customer's first name as an alias.
--    b. Customer's last name as an alias.
--    c. Total number of invoices for each customer using COUNT on InvoiceId, as an alias.
--    d. Total amount spent by each customer using SUM on the 'Total' column, as an alias.
-- 3. Use a JOIN clause to combine data from the 'Customer' table and the 'Invoice' table.
-- 4. Group the results by the customer's first and last name to aggregate the data for each customer.

CREATE OR ALTER VIEW View_CustomerInvoices AS 
SELECT 
    c.FirstName,
    c.LastName,
    COUNT(i.InvoiceId) AS InvoiceNum, 
    SUM(i.Total) AS Customer
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.FirstName, c.LastName;
