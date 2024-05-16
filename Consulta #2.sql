USE starterdb
SHOW TABLES

/*get ALL - traz todos os clientes*/
SELECT * FROM clientes

SELECT nome, dataNascimento, cpf FROM clientes

SELECT nome, datanascimento FROM clientes
WHERE nome LIKE 'H%' OR nome LIKE 'Z%'

/*filtrando linhas*/
SELECT * FROM clientes
WHERE nome LIKE 'H%' OR nome LIKE 'Z%'

/*filtrando colunas e linhas*/
SELECT numeroConta, saldo FROM contas
WHERE saldo>=1000 AND saldo<=5000
/* <=,>=,<,>,=,<> */

/*Filtrando com colunas diferentes*/
SELECT nome,cpf,celular from clientes
WHERE tipoLogradouro='Avenida' AND cidade='Santos'

SELECT numeroConta, saldo, limite FROM contas
WHERE saldo BETWEEN 500 AND 3000

/*Ordenando em ordem alfabética A-Z*/
SELECT nome, cpf, celular FROM clientes
ORDER BY nome ASC /*A-Z*/

SELECT nome, cpf, celular FROM clientes
ORDER BY nome DESC /*Z-A*/

SELECT nome, datanascimento FROM clientes
ORDER BY dataNascimento, nome

SELECT nome, datanascimento FROM clientes
ORDER BY idCliente DESC

/*Ordendando e Filtrando*/
/*Trazer nome, cpf, cidade de todos os clientes que moram em Santos, em ordem alfabética*/
SELECT nome, cpf, cidade FROM clientes
WHERE cidade='Santos'
ORDER BY nome

/*Trazer nome, cpf, cidade de todos os clientes que não moram em Santos,
em ordem alfabética por nome*/
SELECT nome, cpf, cidade FROM clientes
WHERE cidade<>'Santos'
ORDER BY nome

/*select distinct*/
SELECT DISTINCT cidade FROM clientes

SELECT DISTINCT idTipoConta FROM contas;
SELECT * FROM tiposconta

/*Funções de Agregação*/
/*Contar*/
SELECT COUNT(idcliente) AS 'Total de Clientes' FROM clientes
/*Somar*/
SELECT SUM(saldo) AS 'Total de Dinheiro no Banco' FROM contas
/*Conta com menos dinheiro*/
SELECT MIN(saldo) AS 'Menor saldo no Banco' FROM contas
/*Conta com mais dinheiro*/
SELECT MAX(saldo) AS 'Maior saldo no Banco' FROM contas

/*Funções de Agregação com GROUP by*/
SELECT cidade, COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
GROUP BY cidade

SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
WHERE cidade<>'Santos'
GROUP BY cidade
ORDER BY cidade DESC

SELECT cidade, COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
GROUP BY cidade
ORDER BY cidade ASC


SELECT cidade, COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
GROUP BY cidade
HAVING COUNT(idcliente) >= 2
ORDER BY COUNT(idcliente) desc

SELECT * FROM contas;

SELECT idTipoConta, count(idconta) FROM contas
GROUP BY idTipoConta

SELECT saldo AS 'Saldo Até', COUNT(saldo) AS 'Qtd Contas' FROM contas
GROUP by saldo>1000

SELECT cidade, COUNT(idcliente) FROM clientes 
GROUP BY cidade 

SELECT nome, celular, cidade FROM clientes
WHERE celular LIKE '13%'
ORDER BY nome

SELECT cidade, COUNT(idcliente) FROM clientes
WHERE cidade = 'Santos' and complemento = 'não existe'
GROUP BY cidade

SELECT * FROM clientes

INSERT INTO clientes
(nome, dataNascimento, celular, cpf, tipologradouro, nomelogradouro,numero, cidade, cep, estado)
VALUES
('Margarida','1970-07-22','13988776655','88899900011','Rua','Bartolomeu Prado','49','São Paulo','87654428','SP'),
('Rosangela','1960-06-10','13995216165','88899976789','Rua','Armenio Mendes','11','Santos','27654422','SP'),
('Donald','1955-08-02','21988653418','88899911122','Rua','Guaió','122','Santos','27654428','SP'),
('Morgan','1978-01-02','13988776655','88899902211','Avenida','Interlagos','80','São Paulo','99654428','SP'),
('Popó','1968-01-02','13988775566','88899900112','Avenida','Brasil','1080','Rio de janeiro','99654411','RJ');


