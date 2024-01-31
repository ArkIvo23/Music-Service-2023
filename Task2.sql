SELECT name, duration
FROM tracks
WHERE duration = (
    SELECT MAX(duration)
    FROM tracks
    GROUP BY name
);

SELECT name
FROM tracks
WHERE (SELECT duration FROM tracks WHERE id = ?) >= 3.5 * 60;


SELECT name FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE albums.release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artists
WHERE name LIKE '%[^ ]%';

SELECT name
FROM tracks
WHERE name LIKE '%мой%' OR name LIKE '%my%';