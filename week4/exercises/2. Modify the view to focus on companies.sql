-- Modify the view to focus on companies (Exclude NULLS)

-- 1. Alter the existing view 'View_CustomerInvoices' to focus on company data.
-- 2. Select the following columns to be included in the view:
--    a. Customer's company name as an alias.
--    b. Total number of invoices for each company as an alias.
--    c. Total amount spent by each company as an alias.
-- 3. Use a JOIN clause to combine data from the 'Customer' table and the 'Invoice' table.
-- 4. Exclude rows where the company name is NULL.
-- 5. Group the results by the company name to aggregate the data for each company.
ALTER VIEW View_CustomerInvoices AS 
SELECT 
    c.Company AS CustomerCompany,
    COUNT(i.InvoiceId) AS NumInvoice,
    SUM(i.Total) AS TotalSpent 
FROM Customer c 
JOIN Invoice i ON c.CustomerId = i.CustomerId 
WHERE c.Company IS NOT NULL 
GROUP BY c.Company;