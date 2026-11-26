CREATE TABLE artists (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE albums (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    artist_id INT REFERENCES artists(id)
);

CREATE TABLE genres (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE songs (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    album_id INT REFERENCES albums(id),
    genre_id INT REFERENCES genres(id)
);

CREATE TABLE playlists (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE playlist_songs (
    playlist_id INT REFERENCES playlists(id),
    song_id INT REFERENCES songs(id),
    PRIMARY KEY (playlist_id, song_id)
);