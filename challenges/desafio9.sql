SELECT
  COUNT(DISTINCT reproducao.cancao_id) AS "musicas_no_historico"
  FROM reproducao
  JOIN pessoa_usuaria
    ON reproducao.pessoa_usuaria_id = pessoa_usuaria.id
  WHERE
    pessoa_usuaria.nome LIKE "Barbara Liskov";