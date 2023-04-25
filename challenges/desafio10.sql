CREATE TABLE cancao_favorita(
  pessoa_usuaria_id INTEGER NOT NULL,
  cancao_id INTEGER NOT NULL,

  CONSTRAINT PRIMARY KEY(pessoa_usuaria_id, cancao_id),
    FOREIGN KEY(pessoa_usuaria_id) REFERENCES pessoa_usuaria(id),
    FOREIGN KEY(cancao_id) REFERENCES cancao(id)
);

INSERT INTO cancao_favorita(pessoa_usuaria_id, cancao_id)
  VALUES
    ('1', '3'),
    ('1', '6'),
    ('1', '10'),
    ('2', '4'),
    ('3', '1'),
    ('3', '3'),
    ('4', '4'),
    ('4', '7'),
    ('5', '2'),
    ('5', '10'),
    ('8', '4'),
    ('9', '7'),
    ('10', '3');
