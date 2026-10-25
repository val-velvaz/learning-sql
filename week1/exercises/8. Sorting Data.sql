-- List all artist in ascending order
/*
SELECT Name 
FROM Artist 
ORDER BY Name ASC;
*/

-- lIST ALL ARTIST IN DESCENDING ORDER
/*
SELECT Name 
FROM Artist 
ORDER BY Name DESC;
*/

-- Retrieve and sort the song tracks in ascending order by 
-- AlbumId and track name
/*
SELECT AlbumId, Name 
FROM Track 
ORDER BY AlbumId ASC, Name ASC;
*/

/*
Retrieve the name of each playlist and the number of tracks in 
each playlist. And, sort the results in descending order by 
the number of tracks
*/

SELECT Playlist.Name AS Playlist, COUNT(PlaylistTrack.TrackId) AS TrackCount
FROM PlaylistTrack
JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Playlist.Name
ORDER BY TrackCount DESC;