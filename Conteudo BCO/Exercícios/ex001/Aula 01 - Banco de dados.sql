CREATE DATABASE ctti
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE pessoa (
id INT AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
nascimento DATE,
sexo ENUM('M','F','N'),
peso DECIMAL(5,2),
altura DECIMAL (3,2),
nacionalidade VARCHAR(20) DEFAULT 'Brasil',
PRIMARY KEY (id)
)DEFAULT CHARSET = utf8;

INSERT INTO pessoa
 (nome, nascimento, sexo, peso, altura, nacionalidade) 
 VALUES
 ('Guilherme', '1997-10-16', 'M', '110.00', '1.70', 'Chile'),
 ('Patricia', '1975-10-24', 'F', '75.00', '1.69', 'Brasil'),
 ('Mariana', '2000-11-16', 'F', '55.00', '1.64', 'Japão'),
 ('Natalicio', '1965-12-14', 'M', '80.00', '1.62', 'Brasil'),
 ('Rafael', '1994-01-11', 'N', '62.00', '1.73', 'Índia');
 
 ALTER TABLE pessoa
 ADD COLUMN profissao VARCHAR(15) AFTER nome;
 SELECT*FROM pessoa;
 
 DESCRIBE pessoa;
 ALTER TABLE pessoa
 MODIFY COLUMN profissao VARCHAR(30) AFTER nome;
 
 ALTER TABLE pessoa
 CHANGE COLUMN profissao prof VARCHAR(20);
 DESCRIBE pessoa;
 ALTER TABLE pessoa
 CHANGE COLUMN prof profissao VARCHAR(20);
 DESCRIBE pessoa;
 
 /* ASSIM FAZEMOS ANOTAÇÕES */
 
 SELECT nome FROM pessoa WHERE nacionalidade = 'Chile';
 
 