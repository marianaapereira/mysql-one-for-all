SELECT
  album.titulo AS "album",
  COUNT(cancao_favorita.cancao_id) AS "favoritadas"
  FROM album
  JOIN cancao
    ON cancao.album_id = album.id
  JOIN cancao_favorita
    ON cancao_favorita.cancao_id = cancao.id
  GROUP BY album.titulo
  ORDER BY
    COUNT(cancao_favorita.cancao_id) DESC,
    album.titulo ASC
  LIMIT 3;