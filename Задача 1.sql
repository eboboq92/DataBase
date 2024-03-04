-- Вставка жанров
INSERT INTO Genres (genre_id, genre_name) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-Hop');

-- Вставка исполнителей
INSERT INTO Artists (artist_id, artist_name) VALUES
(1, 'Queen'),
(2, 'Taylor Swift'),
(3, 'Kendrick Lamar'),
(4, 'Imagine Dragons');

-- Вставка связей между жанрами и исполнителями
INSERT INTO Genres_Artists (genre_id, artist_id) VALUES
(1, 1), -- Rock -> Queen
(2, 2), -- Pop -> Taylor Swift
(3, 3), -- Hip-Hop -> Kendrick Lamar
(1, 4); -- Rock -> Imagine Dragons

-- Вставка альбомов
INSERT INTO Albums (album_id, release_year, album_name) VALUES
(1, '2001', 'A Night at the Opera'),
(2, '1989', '1989'),
(3, '1980', 'DAMN.');

-- Вставка связей между альбомами и исполнителями
INSERT INTO Albums_Artists (album_id, artist_id) VALUES
(1, 1), -- A Night at the Opera -> Queen
(2, 2), -- 1989 -> Taylor Swift
(3, 3); -- DAMN. -> Kendrick Lamar

-- Вставка треков
INSERT INTO Tracks (track_id, track_name, duration, album_id) VALUES
(1, 'myself', 500, 1),
(2, 'by myself', 600, 2),
(3, 'bemy self.', 400, 3),
(4, 'myself by', 700, 3),
(5, 'by myself by', 600, 1),
(6, 'beemy', 400, 2),
(7, 'premyne', 400, 2);

-- Вставка сборников
INSERT INTO Compilations (compilation_id, compilation_name, release_year) VALUES
(1, 'Best of Rock', 2020),
(2, 'Pop Hits', 2021),
(3, 'Hip-Hop Mix', 2022),
(4, 'Various Tracks', 2023);

-- Вставка связей между сборниками и треками
INSERT INTO Compilations_Tracks (compilation_id, track_id) VALUES
(1, 1), -- Best of Rock -> myself
(2, 2), -- Pop Hits -> by myself
(3, 3), -- Hip-Hop Mix -> bemy self.
(4, 4), -- Various Tracks -> myself by
(1, 5), -- Best of Rock -> by myself by
(2, 6), -- Pop Hits -> beemy
(2, 7); -- Pop Hits -> premyne