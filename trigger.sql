-- Тригер, який автоматично оновлює дату пісні, коли змінюється дата альбому
CREATE OR REPLACE FUNCTION update_song_date()
RETURNS TRIGGER
LANGUAGE 'plpgsql'
AS $$
BEGIN
  UPDATE song SET date = NEW.date
  WHERE album_id = NEW.album_id;
  RETURN NEW;
END; $$;

CREATE TRIGGER song_date_update
AFTER UPDATE OF date ON album
FOR EACH ROW EXECUTE PROCEDURE update_song_date();

