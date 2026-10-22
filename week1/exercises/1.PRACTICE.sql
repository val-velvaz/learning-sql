-- PRACTICE

-- Retrieve all columns from Album, Artist, and Customer
/*
SELECT * 
FROM ALbum;

SELECT *
FROM Artist;

SELECT * 
FROM Customer
*/

-- Retrieve columns FirstName, LastName and HireDate
-- for Employee
/*
SELECT FirstName, LastName, HireDate
FROM Employee; 
*/

-- Retrieve the columns Name and AlbumId
-- of track
/*
SELECT Name, AlbumId
FROM Track;
*/
-- Retrieve the top 5  oldest employeers
/*
SELECT TOP 5 FirstName, LastName, BirthDate
FROM Employee
ORDER BY BirthDate ASC;
*/

-- Retrieve the employeers that aren't in the top 5
-- of the most oldest employeers
/*
SELECT FirstName, LastName, BirthDate
FROM Employee
ORDER BY BirthDate DESC
OFFSET 5 ROWS;

SELECT LastName 
FROM Employee;
*/

-- Retrieve all the distinct last names from employees
/*
SELECT DISTINCT LastName
FROM Employee;
*/

-- Get the first 5 types of track genres when sorted alphabetically
SELECT DISTINCT TOP 5  Name 
FROM Genre;

-- Get the next first 10 track genres sorted alphabetically except
-- begining from the first 3

SELECT DISTINCT TOP 10 Name 
FROM Genre 
ORDER BY Name ASC 
OFFSET 3 ROWS Fetch NEXT 10 ROWS 
ONLY; 