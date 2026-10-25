-- Practicing UPPER/LOWER

-- CONVERT ALL THE LAST NAMES OF THE EMPLOOYEES TO UPPER
/*
SELECT UPPER(LastName)
FROM Customer;
*/

-- Convert all the track names to upper
/*
SELECT UPPER(Name)
FROM Track;
*/

-- Convert all the media type names in upper

/*
SELECT UPPER(Name)
FROM MediaType;
*/

-- Convert all the genres in lower
/*
SELECT LOWER(Name)
FROM Genre;
*/

-- Convert all billing cities to lower
/*
SELECT LOWER(BillingCity)
FROM Invoice;
*/

-- Convert all first names from emplooyees in lower
SELECT LOWER(FirstName)
FROM Employee;
