--Название и продолжительность самого длительного трека:
SELECT track_name, duration
FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

--Название треков, продолжительность которых не менее 3,5 минут:
SELECT track_name, duration
FROM Tracks
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно:
SELECT compilation_name, release_year
FROM Compilations
WHERE release_year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова:
SELECT artist_name
FROM Artists
WHERE POSITION(' ' IN artist_name) = 0;

--Название треков, которые содержат слово «мой» или «my»:
SELECT track_name
FROM Tracks
WHERE CONCAT(' ', LOWER(track_name), ' ') LIKE '% мой %' OR CONCAT(' ', LOWER(track_name), ' ') LIKE '% my %';
