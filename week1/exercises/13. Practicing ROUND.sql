-- practicing ROUND

/*
SELECT ROUND(UnitPrice, 1)
FROM Track;
*/

-- round the billing total for each costumer

/*
SELECT CONCAT(Customer.FirstName, ' ', Customer.LastName),
    ROUND(Invoice.Total, 1)
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId;
*/

