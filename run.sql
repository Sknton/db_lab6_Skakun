SELECT * FROM get_songs_by_artist('The Beatles');

CALL add_song_and_update_artist_song(9, 'New Song', '2023-12-24', 1, 1);
SELECT * FROM song;

UPDATE album
SET date = '2023-12-24'
WHERE album_id = 1;
SELECT * FROM song;