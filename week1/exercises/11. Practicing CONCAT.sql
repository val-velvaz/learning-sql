-- practicing CONCAT 

-- concatenate the first and last name of emplooyers
/*
SELECT CONCAT(FirstName, ' ', LastName)
FROM Employee;
*/

-- concatenate the first and last name of customers
/*
SELECT CONCAT(FirstNAme, ' ', LastName)
FROM Customer;
*/

-- concatenate the track name with the media name, use in between the word 'in'

SELECT CONCAT(Track.Name, ' in ', MediaType.Name)
FROM Track
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId;