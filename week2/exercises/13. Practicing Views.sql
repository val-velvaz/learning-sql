-- Practicing Views

-- Retrieve the highest grossing artist
CREATE VIEW View_ArtistTotalSales AS 
SELECT ar.Name AS ArtistName, 
    SUM(il.UnitPrice * il.Quantity) AS TotalArtistSales 
FROM Artist ar 
JOIN Album al ON ar.ArtistId = al.ArtistId 
JOIN Track t ON al.AlbumId = t.AlbumId 
JOIN InvoiceLine il ON t.TrackId = il.TrackId 
GROUP BY ar.Name;