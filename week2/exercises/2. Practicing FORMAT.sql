-- practicing data FORMAT

/*
SELECT LastName, FORMAT(BirthDate, 'MM-dd-yyyy')
FROM Employee;
*/

-- concat the last name of an employeer with their birthdate
/*
SELECT CONCAT(LastName, ' was birth on ', FORMAT(BirthDate, 'MM-dd-yyyy'))
FROM Employee;
*/

-- concat the hire date for each employeer with "was hired on"
SELECT CONCAT(CONCAT(FirstName, ' ', LastName), ' was hired on ', FORMAT(HireDate, 'MM-dd-yyyy'))
FROM Employee;