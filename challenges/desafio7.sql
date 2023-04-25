SELECT
  artista.nome AS "artista",
  album.titulo AS "album",
  COUNT(DISTINCT seguindo_artista.pessoa_usuaria_id) AS "pessoas_seguidoras"
  FROM artista
  JOIN album
    ON artista.id = album.artista_id
  JOIN seguindo_artista
    ON artista.id = seguindo_artista.artista_id
  GROUP BY
    artista.nome,
    album.titulo
  ORDER BY
    COUNT(DISTINCT seguindo_artista.pessoa_usuaria_id) DESC,
    artista.nome ASC,
    album.titulo;