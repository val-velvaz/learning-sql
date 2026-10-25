-- practiging SUBSTRING
/*
SELECT SUBSTRING(LastName, 1, 4)
FROM Customer;
*/

-- get the first two phone numbers from the customers
/*
SELECT SUBSTRING(Customer.Phone, 2, 3) 
FROM Customer;
*/

-- get the first 8 characters in the customers email
/*
SELECT SUBSTRING(Customer.Email, 1, 8)
FROM Customer;
*/

-- get the characters between 3 and 5 in the album title
SELECT SUBSTRING(Album.Title, 3, 5)
FROM Album;