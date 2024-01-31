SELECT genre 
FROM artists 
GROUP BY genre 
HAVING COUNT(DISTINCT genre) > 1

SELECT name 
FROM tracks 
LEFT JOIN albums ON tracks.album_id = albums.id 
WHERE albums.id IS NULL;

SELECT artist_name 
FROM tracks 
JOIN artists ON tracks.artist_id = artists.id WHERE duration = ( SELECT MIN(duration) FROM tracks GROUP BY artist_id );

SELECT name 
FROM albums 
WHERE release_year 
BETWEEN 2018 AND 2020 
GROUP BY name HAVING COUNT(DISTINCT tracks.name) = ( SELECT MIN(COUNT(DISTINCT tracks.name)) FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE release_year BETWEEN 2018 AND 2020 GROUP BY albums.name );