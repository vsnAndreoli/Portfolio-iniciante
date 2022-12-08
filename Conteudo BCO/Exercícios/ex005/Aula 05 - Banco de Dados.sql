CREATE table aluno (

id INT auto_increment NOT NULL primary KEY,
nome VARCHAR(30) NOT NULL,
profissao VARCHAR(20),
nascimento DATE,
sexo ENUM ('M','F'),
peso DECIMAL (5,2),
altura DECIMAL (3,2),
localidade VARCHAR(20) DEFAULT'Londrina'
) default charset=utf8;

INSERT INTO `aluno` VALUES (1,'Daniel Morais','Auxiliar Administrat','1984-01-02','M',78.50,1.83,'Londrina'),(2,'Talita Nascimento','Farmacêutico','1999-12-30','F',55.20,1.65,'Ibiporã'),(3,'Emerson Gabriel','Programador','1920-12-30','M',50.20,1.65,'Rolândia'),(4,'Lucas Damasceno','Auxiliar Administrat','1930-11-02','M',63.20,1.75,'Jataizinho'),(5,'Leila Martins','Farmacêutico','1975-04-22','F',99.00,2.15,'Londrina'),(6,'Letícia Neves','Programador','1999-12-03','F',87.00,2.00,'Londrina'),(7,'Janaína Couto','Auxiliar Administrat','1987-11-12','F',75.40,1.66,'Maringá'),(8,'Carlisson Rosa','Professor','2010-08-01','M',78.22,1.98,'Londrina'),(9,'Jackson Telles','Programador','1999-01-23','M',55.75,1.33,'Ibiporã'),(10,'Danilo Araujo','Dentista','1975-12-10','M',99.21,1.87,'Maringá'),(11,'Andreia Delfino','Auxiliar Administrat','1975-07-01','F',48.64,1.54,'Jataizinho'),(12,'Valter Vilmerson','Ator','1985-10-12','M',88.55,2.03,'Londrina'),(13,'Allan Silva','Programador','1993-11-11','M',76.99,1.55,'Londrina'),(14,'Rosana Kunz','Professor','1935-01-16','F',55.24,1.87,'Londrina'),(15,'Josiane Dutra','Empreendedor','1950-01-20','F',98.70,1.04,'Ibiporã'),(16,'Elvis Schwarz','Dentista','2011-05-07','M',66.69,1.76,'Maringá'),(17,'Paulo Narley','Auxiliar Administrat','1997-03-17','M',120.10,2.22,'Londrina'),(18,'Joade Assis','Médico','1930-12-01','M',65.88,1.78,'Sertanópolis'),(19,'Nara Matos','Programador','1978-03-17','F',65.90,1.33,'Londrina'),(20,'Marcos Dissotti','Empreendedor','2010-01-01','M',53.79,1.54,'Ibiporã'),(21,'Ana Carolina Mendes','Ator','2000-12-15','F',88.30,1.54,'Londrina'),(22,'Guilherme de Sousa','Dentista','2001-05-18','M',132.70,1.97,'Rolândia'),(23,'Bruno Torres','Auxiliar Administrat','2000-01-30','M',44.65,1.65,'Londrina'),(24,'Yuji Homa','Empreendedor','1996-12-25','M',33.90,1.22,'Apucarana'),(25,'Raian Porto','Programador','1989-05-05','M',54.89,1.54,'Londrina'),(26,'Paulo Batista','Ator','1999-03-15','M',110.12,1.87,'Ibiporã'),(27,'Monique Precivalli','Auxiliar Administrat','2013-12-30','F',48.20,1.22,'Londrina'),(28,'Herisson Silva','Auxiliar Administrat','1965-10-10','M',74.65,1.56,'Maringá'),(29,'Tiago Ulisses','Dentista','1993-04-22','M',150.30,2.35,'Londrina'),(30,'Anderson Rafael','Programador','1989-12-01','M',64.22,1.44,'Jataizinho'),(31,'Karine Ribeiro','Empreendedor','1988-10-01','F',42.10,1.65,'Londrina'),(32,'Roberto Luiz Debarba','Ator','2007-01-09','M',77.44,1.56,'Londrina'),(33,'Jarismar Andrade','Dentista','2000-06-23','F',63.70,1.33,'Londrina'),(34,'Janaina Oliveira','Professor','1955-03-12','F',52.90,1.76,'Uraí'),(35,'Márcio Mello','Programador','2011-11-20','M',54.11,1.55,'Maringá'),(36,'Robson Rodolpho','Auxiliar Administrat','2000-08-08','M',110.10,1.76,'Londrina'),(37,'Daniele Moledo','Empreendedor','2006-08-11','F',101.30,1.99,'Londrina'),(38,'Neto Sophiate','Ator','1996-05-17','M',59.28,1.65,'Ibiporã'),(39,'Neriton Dias','Auxiliar Administrat','2009-10-30','M',48.99,1.29,'Londrina'),(40,'André Schmidt','Programador','1993-07-26','M',55.37,1.22,'Arapongas'),(41,'Isaias Buscarino','Dentista','2001-01-07','M',99.90,1.55,'Rolândia'),(42,'Rafael Guimma','Empreendedor','1968-04-11','M',88.88,1.54,'Londrina'),(43,'Ana Carolina Hernandes','Ator','1970-10-11','F',65.40,2.08,'Maringá'),(44,'Luiz Paulo','Professor','1984-11-01','M',75.12,1.38,'Ibiporã'),(45,'Bruna Teles','Programador','1980-11-07','F',55.10,1.86,'Londrina'),(46,'Diogo Padilha','Auxiliar Administrat','2000-03-03','M',54.34,1.88,'Arapongas'),(47,'Bruno Miltersteiner','Dentista','1986-02-19','M',77.45,1.65,'Sarandi'),(48,'Elaine Nunes','Programador','1998-08-15','F',35.90,2.00,'Uraí'),(49,'Silvio Ricardo','Programador','2012-03-12','M',65.99,1.23,'Maringá'),(50,'Denilson Barbosa da Silva','Empreendedor','2000-01-08','M',97.30,2.00,'Londrina'),(51,'Jucinei Teixeira','Professor','1977-11-22','F',44.80,1.76,'Ibiporã'),(52,'Bruna Santos','Auxiliar Administrat','1991-12-01','F',76.30,1.45,'Uraí'),(53,'André Vitebo','Médico','1970-07-01','M',44.11,1.55,'Londrina'),(54,'Andre Santini','Programador','1991-08-15','M',66.00,1.76,'Cambé'),(55,'Ruan Valente','Programador','1998-03-19','M',101.90,1.76,'Uraí'),(56,'Nailton Mauricio','Médico','1992-04-25','M',86.01,1.43,'Maringá'),(57,'Rita Pontes','Professor','1999-09-02','F',54.10,1.35,'Arapongas'),(58,'Carlos Camargo','Programador','2005-02-22','M',124.65,1.33,'Londrina'),(59,'Philppe Oliveira','Auxiliar Administrat','2000-05-23','M',105.10,2.19,'Londrina'),(60,'Dayana Dias','Professor','1993-05-30','F',88.30,1.66,'Arapongas'),(61,'Silvana Albuquerque','Programador','1999-05-22','F',56.00,1.50,'Londrina');

SELECT*FROM aluno;

SELECT*FROM aluno WHERE sexo ='F';

SELECT*FROM aluno WHERE nascimento BETWEEN '2000-01-01' AND '2005-12-31';
SELECT*FROM aluno WHERE nascimento IN ('2000-01-01', '2005-12-31');
SELECT*FROM aluno WHERE nascimento >='2000-01-01' AND nascimento <='2005-12-31';

SELECT*FROM aluno WHERE profissao LIKE 'Programador';
SELECT id,nome FROM aluno WHERE profissao LIKE 'Programador';

SELECT*FROM aluno WHERE (sexo LIKE 'F' AND localidade = 'Londrina') AND nome LIKE 'M%';

SELECT nome,peso FROM aluno WHERE nome LIKE '%Silva%' AND localidade != 'Londrina' AND peso <'100.00';


SELECT DISTINCT carga FROM cursos;

SELECT DISTINCT localidade FROM aluno;

SELECT DISTINCT localidade FROM aluno ORDER BY localidade DESC;


SELECT AVG(altura) FROM aluno;

SELECT MIN(altura) FROM aluno;

SELECT MAX(altura) FROM aluno;

SELECT SUM(altura) FROM aluno;

SELECT COUNT(altura) FROM aluno;

SELECT COUNT(altura) FROM aluno WhERE peso >'80';

SELECT*FROM aluno WHERE peso >40;

SELECT COUNT(*)FROM aluno WHERE peso >40;

SELECT MAX(altura) FROM aluno WHERE localidade='Londrina';

SELECT AVG(peso) FROM aluno;

SELECT MIN(peso) FROM aluno WHERE sexo='F' AND localidade !='Londrina' AND (nascimento >='1990-01-01' AND nascimento <='2000-12-31');

SELECT*FROM aluno WHERE altura > '1.90' AND sexo='F';

SELECT AVG(peso) FROM aluno WHERE nascimento < '2000-01-01' AND sexo='F';

SELECT*FROM aluno;


SELECT altura FROM aluno GROUP BY altura;

SELECT altura, COUNT(sexo) FROM aluno GROUP BY altura;

SELECT peso FROM aluno GROUP BY altura ORDER BY localidade;

SELECT peso, COUNT(*) FROM aluno GROUP BY localidade ORDER BY altura;

CREATE table cursos (
idcurso INT auto_increment NOT NULL primary KEY ,
nome VARCHAR(30) NOT NULL,
descricao TEXT,
carga TINYINT UNSIGNED,
totaulas TINYINT UNSIGNED,
ano YEAR
) default charset=utf8;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2021),(2,'Algoritmos','Lógica de Programação',20,15,2020),(3,'Photoshop','Dicas de Photoshop CC',10,8,2022),(4,'PHP','Curso de PHP para iniciantes',40,20,2023),(5,'Java','Introdução à Linguagem Java',40,29,2020),(6,'MySQL','Bancos de Dados MySQL',30,15,2020),(7,'Word','Curso completo de Word',40,30,2022),(8,'Python','Curso de Python',40,18,2020),(9,'POO','Curso de Programação Orientada a Objetos',60,35,2020),(11,'Responsividade','Curso de Responsividade',30,15,2019),(12,'C++','Curso de C++ com Orientação a Objetos',40,25,2020),(13,'C#','Curso de C#',30,12,2020),(14,'Android','Curso de Desenvolvimento de Aplicativos para Android',60,30,2021),(15,'JavaScript','Curso de JavaScript',35,18,2020),(16,'PowerPoint','Curso completo de PowerPoint',30,12,2020),(17,'Swift','Curso de Desenvolvimento de Aplicativos para iOS',60,30,2021),(18,'Hardware','Curso de Montagem e Manutenção de PCs',30,12,2022),(19,'Redes','Curso de Redes para Iniciantes',40,15,2019),(20,'Segurança','Curso de Segurança',15,8,2020),(21,'SEO','Curso de Otimização de Sites',30,12,2021),(22,'Premiere','Curso de Edição de Vídeos com Premiere',20,10,2023),(23,'After Effects','Curso de Efeitos em Vídeos com After Effects',20,10,2021),(24,'WordPress','Curso de Criação de Sites com WordPress',60,30,2020),(25,'Joomla','Curso de Criação de Sites com Joomla',60,30,2019),(26,'Magento','Curso de Criação de Lojas Virtuais com Magento',50,25,2023),(27,'Modelagem de Dados','Curso de Modelagem de Dados',30,12,2020),(28,'HTML4','Curso Básico de HTML, versão 4.0',20,9,2023),(29,'PHP7','Curso de PHP, versão 7.0',40,20,2020),(30,'PHP4','Curso de PHP, versão 4.0',20,10,2022),(31,'Internet2','Curso para navegação',25,12,2021),(32,'Intranet2','Curso de ambientação de redes internas',30,15,2020),(33,'LibreOffice','Curso do pacote Libre Office',50,20,2023),(34,'Arduino2','Curso introdução ao arduino',40,20,2024),(35,'Corel9','Curso de Corel Draw',50,25,2024),(36,'Web Designer','Curso internet WEB',50,25,2023),(37,'Lógica','Curso de lógica de programação',30,15,2021),(38,'Android1','Curso de programação Android',50,20,2020),(39,'Auto Cad','Curso introdução ao CAD',30,15,2023),(40,'SQL','Curso de Banco de dados MySQL',50,20,2022);

SELECT*FROM cursos WHERE totaulas >20;
SELECT*FROM cursos WHERE totaulas =30;

SELECT carga FROM cursos WHERE totaulas=30 GROUP BY carga;

SELECT carga, COUNT(nome) FROM cursos WHERE totaulas = 30 GROUP BY carga;

SELECT*FROM cursos WHERE totaulas=30;

SELECT carga, COUNT(NOME) FROM cursos GROUP BY carga HAVING COUNT(nome)>3;

SELECT*FROM cursos GROUP BY ano;

SELECT ano,COUNT(*)FROM cursos GROUP BY ano ORDER BY COUNT(*)DESC;

SELECT ano,COUNT(*)FROM cursos GROUP BY ano HAVING COUNT(ano) >=5 ORDER BY COUNT(*)DESC;

SELECT totaulas,COUNT(*)FROM cursos GROUP BY totaulas HAVING totaulas >=30 ORDER BY COUNT(*)DESC;

SELECT ano,COUNT(*)FROM cursos WHERE totaulas >30 GROUP BY ano HAVING ano>2020 ORDER BY COUNT(*)DESC;

SELECT AVG(carga) FROM cursos;

SELECT carga, COUNT(*)FROM cursos WHERE ano>2021 GROUP BY carga;

SELECT carga, COUNT(*)FROM cursos WHERE ano>2021 GROUP BY carga HAVING carga>(SELECT AVG(carga) FROM cursos);

SELECT profissao, COUNT(*) FROM alunos GROUP BY profissao ORDER BY COUNT(*);

SELECT sexo, COUNT(*) FROM aluno WHERE nascimento>'2001-01-01' GROUP BY sexo; 

