SELECT
  CASE 
    WHEN pessoa_usuaria.idade <= 30 THEN "Até 30 anos"
    WHEN pessoa_usuaria.idade <= 60 THEN "Entre 31 e 60 anos"
    ELSE "Maior de 60 anos"
  END AS "faixa_etaria",
  COUNT(DISTINCT pessoa_usuaria.id) AS "total_pessoas_usuarias",
  COUNT(cancao_favorita.cancao_id) AS "total_favoritadas"
  FROM pessoa_usuaria
  LEFT JOIN cancao_favorita
    ON pessoa_usuaria.id = cancao_favorita.pessoa_usuaria_id
  GROUP BY faixa_etaria
  ORDER BY faixa_etaria ASC;