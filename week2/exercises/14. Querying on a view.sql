-- 14. Quering a view
SELECT * FROM View_ArtistTotalSales;

-- we can use other sql clauses and functions
-- to an existing view
SELECT * FROM View_ArtistTotalSales
WHERE TotalArtistSales > 25 
ORDER BY TotalArtistSales DESC;