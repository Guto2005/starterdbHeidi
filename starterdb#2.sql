USE starterdb

INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
)
VALUES
	(
		'Huguinho',
		'1190-02-01',
		'13999887766',
		'22233344455',
		'Avenida',
		'Ana Costa',
		'488',
		'ap 44',
		'Santos',
		'11111222',
		'SP'); 
		
		SELECT * FROM clientes
		
INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
)
VALUES
	(
		'Zezinho', '1995-04-24', '13999887766',
		'22233344455', 'Rua', 'Margaridas',
		'488', 'ap 154', 'Santos', '11111222',
		'SP'
	);
		
		SELECT * FROM clientes
		
/*Inserts - Massa de Dados*/		
		
INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
)
VALUES
	(
		'Luizinho', '1995-06-06', '13999887766',
		'22233344455', 'Avenida', '9 de Julho',
		'41', 'casa 2', 'Santos', '11111222',
		'SP'
	);		
		
		
INSERT INTO clientes 
VALUES(
	 7,
	'Patinhas',
	'1955-07-07',
	'13999887766',
	'22233344455',
	'Rodovia',
	'BR 116',	
	'KM 23',
	'não existe',
	'Miracatu',
	'11111222',
	'SP');
		
		SELECT * FROM clientes 
		
UPDATE clientes 
SET dataNascimento='1990-02-01'
WHERE idCliente=1		
		
		SELECT * FROM clientes 
		
DELETE FROM clientes 
WHERE idCliente=2		

SELECT * FROM clientes

INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
)
VALUES
	(
		'teste', '1995-06-06', '13999887766',
		'22233344455', 'AvenidA', '9 de Julho',
		'41', 'casa 2', 'Santos', '11111222',
		'SP'
	);		
	
	
	SELECT * FROM clientes
	
	INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, cidade, cep,
	estado
)
VALUES
	(
		'teste2', '1995-06-06', '13999887766',
		'22233344455', 'AvenidA', '9 de Julho',
		'41', 'Santos', '11111222',
		'SP'
	);		
	
		SELECT * FROM clientes
		
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Corrente');
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Salário');
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Poupança');
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Especial');	
SELECT * FROM tiposConta

SELECT * FROM Contas


INSERT INTO contas (numeroConta, saldo, limite, statusConta,idTipoConta) VALUES ('777778888', 1000, 0, '1', 1);

INSERT INTO contas (numeroConta, saldo, limite, statusConta,idTipoConta) VALUES ('777456288', 10000, 500.75, '1', 1);

INSERT INTO contas (numeroConta, saldo, limite, statusConta,idTipoConta) VALUES ('777412388', 100, 5000, '1', 2);

DELETE FROM clientes 
WHERE idCliente=3 OR idCliente=4 OR	idCliente=8 OR idCliente=9

INSERT INTO ClientesContas (idCliente, idConta)VALUES (1,1);
SELECT * FROM clientescontas


INSERT INTO ClientesContas (idCliente, idConta)VALUES (5,3);
INSERT INTO ClientesContas (idCliente, idConta)VALUES (7,3); 
SELECT * FROM clientescontas

SELECT * FROM contas;
SELECT * FROM clientes;



START TRANSACTION
DELETE FROM clientes WHERE idCliente=14

INSERT INTO tiposconta (nomeTipoConta)
VALUES ('super conta');

COMMIT 
ROLLBACK

CREATE VIEW vw_nomeCorrentista_Conta AS 
SELECT nome,cpf, celular,dataNascimento,numeroConta,saldo,nomeTipoConta 
FROM clientes
INNER JOIN 
clientescontas 
ON clientes.idCliente = clientescontas.idCliente
INNER JOIN 
contas
ON clientescontas.idConta = contas.idConta
INNER JOIN 
tiposconta
ON contas.idtipoconta=tiposconta.idtipoConta

DROP view vw_nomeCorrentista_conta

SELECT nome,numeroConta,cpf FROM vw_nomeCorrentista_conta
WHERE nomeTipoConta = 'Corrente'
ORDER BY nome

CREATE PROCEDURE pi_inserirtiposconta (IN nometipoconta_par VARCHAR(20)
)
INSERT INTO tiposconta (nometipoconta)
VALUES (nomeTipoConta_par);

CALL pi_inserirtiposconta('Super Conta')

SELECT * FROM tiposconta

/* Criar uma procedure que traga quantos emprestimos foram 
realizados por associado*/


 
/* Criar uma procedure que traga quantos emprestimos foram 
realizados por determinado associado por nome*/





