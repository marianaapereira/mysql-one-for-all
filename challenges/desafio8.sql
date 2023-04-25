SELECT
  artista.nome AS "artista",
  album.titulo AS "album"
  FROM artista
  JOIN album
    ON artista.id = album.artista_id
  WHERE
    artista.nome LIKE "Elis Regina"
  ORDER BY
	  album.titulo ASC;