-- basic joins

-- Retrieve the invoice IDs from each customer
/*
SELECT 
    Customer.CustomerId,
    Customer.LastName,
    Invoice.InvoiceId
FROM Customer 
JOIN Invoice ON Customer.State = Invoice.BillingState;
*/

-- demostrate the left join
SELECT 
    Customer.CustomerId,
    Customer.LastName,
    Invoice.InvoiceId
FROM Customer 
LEFT JOIN Invoice ON Customer.State = Invoice.BillingState;
