SELECT
  COUNT(cancao.id) AS "cancoes",
  COUNT(DISTINCT artista.id) AS "artistas",
  COUNT(DISTINCT album.id) AS "albuns"
  FROM cancao
  JOIN album ON cancao.album_id = album.id
  JOIN artista ON album.artista_id = artista.id;