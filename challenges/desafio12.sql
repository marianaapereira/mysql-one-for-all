SELECT
  artista.nome AS "artista",
  CASE
    WHEN COUNT(cancao_favorita.cancao_id) >= 5 THEN "A"
    WHEN COUNT(cancao_favorita.cancao_id) >= 3 THEN "B"
    WHEN COUNT(cancao_favorita.cancao_id) >= 1 THEN "C"
    ELSE "-"
  END AS "ranking"
  FROM artista
  INNER JOIN album
    ON artista.id = album.artista_id
  INNER JOIN cancao
    ON album.id = cancao.album_id 
  LEFT JOIN cancao_favorita
    ON cancao.id = cancao_favorita.cancao_id
  GROUP BY artista.nome
  ORDER BY
    COUNT(cancao_favorita.cancao_id) DESC,
    artista.nome ASC;