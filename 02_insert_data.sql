INSERT INTO artists VALUES
(1, 'Anirudh'),
(2, 'A.R. Rahman'),
(3, 'Devi Sri Prasad');

INSERT INTO albums VALUES
(1, 'Jailer', 1),
(2, 'Roja', 2),
(3, 'Pushpa', 3);

INSERT INTO genres VALUES
(1, 'Melody'),
(2, 'Dance'),
(3, 'Classical');

INSERT INTO songs VALUES
(1, 'Hukum', 1, 2),
(2, 'Kaavaalaa', 1, 2),
(3, 'Chinna Chinna Aasai', 2, 1),
(4, 'Roja Janeman', 2, NULL),
(5, 'Srivalli', 3, 1),
(6, 'Oo Antava', 3, NULL);

INSERT INTO playlists VALUES
(1, 'Favorites'),
(2, 'Dance Hits'),
(3, 'Melodies'),
(4, 'New Playlist');

INSERT INTO playlist_songs VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(2, 2),
(2, 6),
(3, 3),
(3, 5);