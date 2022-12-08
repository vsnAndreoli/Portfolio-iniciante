CREATE table clientes (
id INT auto_increment primary KEY,
nome VARCHAR(30) NOT NULL,
rg VARCHAR(12) NOT NULL,
sexo ENUM('M','F','O'),
nascimento DATE 
) default charset=utf8;

INSERT INTO clientes
(nome, rg, sexo, nascimento) VALUES
('Allan', '123456789', 'M', '2000-03-03');

SELECT*FROM clientes;
SELECT id, nome FROM clientes;
SELECT*FROM clientes WHERE id=5;
SELECT nome, nascimento FROM clientes WHERE sexo='f';
