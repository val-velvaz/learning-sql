-- This code creates a SQL View named 'View_InvoiceDetails' that provides detailed information about invoices.
-- 1. Define the view name as 'View_InvoiceDetails' using the CREATE VIEW statement.
-- 2. Select the following columns to be included in the view:
--    a. Invoice ID
--    b. Invoice date
--    c. Billing country
--    d. Track ID
--    e. Unit price
--    f. Quantity of the track purchased.
--    g. The total calculated as from the 'InvoiceLine' table, as an alias.
-- 3. Use a JOIN clause to combine data from the 'Invoice' table and the 'InvoiceLine' table.
-- 4. Join with the 'InvoiceLine' table to get detailed information about each invoice's line items.

CREATE OR ALTER VIEW View_InvoiceDetails AS 
SELECT 
    i.InvoiceId, 
    i.InvoiceDate,
    i.BillingCountry,
    il.TrackId,
    il.UnitPrice,
    il.Quantity,
    il.UnitPrice * il.Quantity AS InvoiceLineTotal 
FROM Invoice i  
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId;