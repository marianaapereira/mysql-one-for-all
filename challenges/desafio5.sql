SELECT
  cancao.titulo AS "cancao",
  COUNT(reproducao.cancao_id) as "reproducoes"
  FROM cancao
  JOIN reproducao ON cancao.id = reproducao.cancao_id
  GROUP BY reproducao.cancao_id
  ORDER BY
    COUNT(reproducao.cancao_id) DESC,
    cancao.titulo ASC
  LIMIT 2;