SELECT
  pessoa_usuaria.nome AS "pessoa_usuaria",
  COUNT(DISTINCT reproducao.cancao_id) AS "musicas_ouvidas",
  ROUND(SUM(DISTINCT cancao.duracao_segundos) / 60, 2) AS "total_minutos"
  FROM pessoa_usuaria
  JOIN reproducao ON pessoa_usuaria.id = reproducao.pessoa_usuaria_id
  JOIN cancao ON reproducao.cancao_id = cancao.id
  GROUP BY pessoa_usuaria.nome
  ORDER BY pessoa_usuaria.nome ASC;