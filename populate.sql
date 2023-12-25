-- Вставка даних у таблицю "artist"
INSERT INTO artist (pseudonym, artist_id) VALUES
('The Beatles', 1),
('Michael Jackson', 2),
('Queen', 3),
('Bob Marley', 4),
('Elvis Presley', 5);

-- Вставка даних у таблицю "album"
INSERT INTO album (name, album_id, date, artist_id) VALUES
('Abbey Road', 1, '1969-09-26', 1),
('Thriller', 2, '1982-11-30', 2),
('A Night at the Opera', 3, '1975-11-21', 3),
('Legend', 4, '1984-05-08', 4),
('Elvis Presley', 5, '1956-03-23', 5),
('Bad 25', 6, '1988-10-21', 2),
('News of the World', 7, '1977-10-07', 3),
('Yellow Submarine', 8, '1969-01-13', 1);

-- Вставка даних у таблицю "song"
INSERT INTO song (song_id, name, date, album_id) VALUES
(1, 'Come Together', '1969-09-26', 1),
(2, 'Billie Jean', '1982-11-30', 2),
(3, 'Bohemian Rhapsody', '1975-11-21', 3),
(4, 'Three Little Birds', '1984-05-08', 4),
(5, 'Heartbreak Hotel', '1956-03-23', 5),
(6, 'Smooth Criminal', '1988-10-21', 6),
(7, 'We Will Rock You', '1977-10-07', 7),
(8, 'Yellow Submarine', '1969-01-13', 8);

-- Вставка даних у таблицю "artist_song"
INSERT INTO artist_song (artist_id, song_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);