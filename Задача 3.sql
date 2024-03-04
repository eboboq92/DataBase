--Количество исполнителей в каждом жанре:
SELECT g.genre_name, COUNT(a.artist_id) AS artist_count
FROM Genres g
LEFT JOIN Genres_Artists ga ON g.genre_id = ga.genre_id
LEFT JOIN Artists a ON ga.artist_id = a.artist_id
GROUP BY g.genre_name;

--Количество треков, вошедших в альбомы 2019–2020 годов:
SELECT COUNT(t.track_id) AS track_count
FROM Tracks t
INNER JOIN Albums a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому:
SELECT a.album_name, AVG(t.duration) AS avg_duration
FROM Tracks t
INNER JOIN Albums a ON t.album_id = a.album_id
GROUP BY a.album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году:
SELECT a.artist_name
FROM Artists a
WHERE a.artist_id NOT IN (
    SELECT aa.artist_id
    FROM Albums_Artists aa
    JOIN Albums alb ON aa.album_id = alb.album_id
    WHERE alb.release_year = 2020
);


--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами):
SELECT c.compilation_name
FROM Compilations c
INNER JOIN Compilations_Tracks ct ON c.compilation_id = ct.compilation_id
INNER JOIN Tracks t ON ct.track_id = t.track_id
INNER JOIN Albums a ON t.album_id = a.album_id
INNER JOIN Albums_Artists aa ON a.album_id = aa.album_id
INNER JOIN Artists ar ON aa.artist_id = ar.artist_id
WHERE ar.artist_name = 'Выбранный исполнитель';