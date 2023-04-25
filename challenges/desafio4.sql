SELECT
  pessoa_usuaria.nome AS "pessoa_usuaria",
  IF(
	  YEAR(MAX(reproducao.data_reproducao)) >= 2021,
	  "Ativa",
      "Inativa"
	) AS "status_pessoa_usuaria"
  FROM pessoa_usuaria
  JOIN reproducao ON pessoa_usuaria.id = reproducao.pessoa_usuaria_id
  GROUP BY pessoa_usuaria.nome
  ORDER BY pessoa_usuaria.nome ASC;