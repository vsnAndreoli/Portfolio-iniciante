CREATE TABLE IF NOT EXISTS curso(
nome VARCHAR (30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
taulas INT,
ano YEAR DEFAULT '2022'
) DEFAULT CHARSET = utf8;

ALTER TABLE curso
ADD COLUMN idcurso INT FIRST;
ALTER TABLE curso
ADD PRIMARY KEY (idcurso);
DESCRIBE curso;

INSERT INTO curso VALUES
('1', 'Informática', 'Informática Básica', '60','30','2022'),
('2', 'Intranet', 'Utilização da Internet', '30','150','2020'),
('3', 'Inglês', 'Aprenda o Inglês Básico', '100','60','2019'),
('4', 'Espanhol', 'Aprenda o Espanhol Básico', '90','50','2019'),
('5', 'Japonês', 'Aprenda o Japonês Básico', '90','50','2019'),
('6', 'HTNL5', 'Curso de HTML', '40','20','2000'),
('7', 'JATA', 'Curso Básico de Java', '10','30','2021'),
('8', 'Writer', 'Jurso para Iniciantes', '40','20','2022'),
('9', 'Word', 'Curso Intermediário', '40','20','2022');

SELECT*FROM curso;

UPDATE curso SET nome = 'Internet' WHERE idcurso = '2';
UPDATE curso SET nome = 'HTML5' WHERE idcurso ='6';
UPDATE curso SET nome = 'JAVA' WHERE idcurso ='7';
UPDATE curso SET ano = '2020' WHERE idcurso ='6';
UPDATE curso SET ano = '2020' WHERE idcurso ='7';
UPDATE curso SET carga = '60' WHERE idcurso ='7';
