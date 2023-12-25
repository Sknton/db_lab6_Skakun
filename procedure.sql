-- Процедура, яка додає нову пісню до бази даних і оновлює таблицю artist_song
CREATE OR REPLACE PROCEDURE add_song_and_update_artist_song(p_song_id INT, p_name VARCHAR(200), p_date DATE, p_album_id INT, p_artist_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
  -- Додаємо нову пісню
  INSERT INTO song (song_id, name, date, album_id) 
  VALUES (p_song_id, p_name, p_date, p_album_id);

  -- Оновлюємо таблицю artist_song
  INSERT INTO artist_song (artist_id, song_id)
  VALUES (p_artist_id, p_song_id);
END; $$



