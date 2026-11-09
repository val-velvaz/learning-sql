-- Updating and Removing Views
/*
CREATE OR ALTER VIEW View_ArtistTotalSales AS 
SELECT ar.Name AS ArtistName, 
    SUM(il.UnitPrice * il.Quantity) AS TotalArtistSales 
FROM Artist ar 
JOIN Album al ON ar.ArtistId = al.ArtistId
JOIN Track t ON al.AlbumId = t.AlbumId 
JOIN InvoiceLine il ON t.TrackId = il.TrackId 
GROUP BY ar.Name;
*/

-- retrieve the highest grossing artist who grossed over $25 
-- sort the results by the artist's name in descending order
/*
SELECT * FROM View_ArtistTotalSales 
WHERE TotalArtistSales > 25
ORDER BY TotalArtistSales DESC;
*/

-- Alter the View_ArtistTotalSales view to remove non-musical and entertainment genres
ALTER VIEW View_ArtistTotalSales AS 
SELECT ar.Name AS ArtistName, 
    SUM(il.UnitPrice * il.Quantity) AS TotalArtistSales 
FROM Artist ar 
JOIN Album al ON ar.ArtistId = al.ArtistId
JOIN Track t ON al.AlbumId = t.AlbumId 
JOIN InvoiceLine il ON t.TrackId = il.TrackId 
GROUP BY ar.Name;