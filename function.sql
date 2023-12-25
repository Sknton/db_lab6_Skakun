-- Функція, яка повертає всі пісні виконавця за його псевдонімом
CREATE OR REPLACE FUNCTION get_songs_by_artist(pseudonym VARCHAR(50))
RETURNS TABLE(song_name VARCHAR(200), song_date DATE) AS $$
BEGIN
  RETURN QUERY 
  SELECT song.name, song.date
  FROM song
  JOIN album ON song.album_id = album.album_id
  JOIN artist ON album.artist_id = artist.artist_id
  WHERE artist.pseudonym = get_songs_by_artist.pseudonym;
END; $$
LANGUAGE plpgsql;



