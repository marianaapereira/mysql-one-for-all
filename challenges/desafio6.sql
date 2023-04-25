SELECT
  ROUND(MIN(plano.valor), 2) AS "faturamento_minimo",
  ROUND(MAX(plano.valor), 2) AS "faturamento_maximo",
  ROUND(AVG(plano.valor), 2) AS "faturamento_medio",
  ROUND(SUM(plano.valor), 2) AS "faturamento_total"
  FROM plano
  JOIN pessoa_usuaria ON pessoa_usuaria.plano_id = plano.id;