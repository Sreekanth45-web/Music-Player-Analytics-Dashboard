-- Problem 1: Find Longest Playlist

SELECT p.name AS playlist_name,
       COUNT(ps.song_id) AS song_count
FROM playlists p
JOIN playlist_songs ps
ON p.id = ps.playlist_id
GROUP BY p.id, p.name
ORDER BY song_count DESC
LIMIT 1;












-- Problem 2: Songs Without Genres

SELECT title AS song_title
FROM songs
WHERE genre_id IS NULL;





-- Problem 3: Artist-Album-Song Linkage

SELECT
    s.title AS song_name,
    al.title AS album_name,
    ar.name AS artist_name
FROM songs s
INNER JOIN albums al
ON s.album_id = al.id
INNER JOIN artists ar
ON al.artist_id = ar.id;





-- Problem 4: Empty Playlists

SELECT name AS playlist_name
FROM playlists
WHERE id NOT IN (
    SELECT playlist_id
    FROM playlist_songs
);











-- Problem 5: Album Song Count

SELECT
    a.title AS album_title,
    COUNT(s.id) AS song_count
FROM albums a
LEFT JOIN songs s
ON a.id = s.album_id
GROUP BY a.id, a.title;




