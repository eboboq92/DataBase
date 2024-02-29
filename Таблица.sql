DROP TABLE IF EXISTS Genres_Artists, Albums_Artists, Compilations_Tracks, Genres, Artists, Albums, Tracks, Compilations;

-- Создание таблицы Genres
CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(255)
);

-- Создание таблицы Artists
CREATE TABLE Artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(255)
);

-- Создание таблицы Genres_Artists для связи между жанрами и исполнителями
CREATE TABLE Genres_Artists (
    genre_id INT,
    artist_id INT,
    PRIMARY KEY (genre_id, artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

-- Создание таблицы Albums
CREATE TABLE Albums (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(255),
    release_year INT
);

-- Создание таблицы Albums_Artists для связи между альбомами и исполнителями
CREATE TABLE Albums_Artists (
    album_id INT,
    artist_id INT,
    PRIMARY KEY (album_id, artist_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

-- Создание таблицы Tracks
CREATE TABLE Tracks (
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(255),
    duration INT,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

-- Создание таблицы Compilations
CREATE TABLE Compilations (
    compilation_id SERIAL PRIMARY KEY,
    compilation_name VARCHAR(255),
    release_year INT
);

-- Создание таблицы Compilations_Tracks для связи между сборниками и треками
CREATE TABLE Compilations_Tracks (
    compilation_id INT,
    track_id INT,
    PRIMARY KEY (compilation_id, track_id),
    FOREIGN KEY (compilation_id) REFERENCES Compilations(compilation_id),
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);
