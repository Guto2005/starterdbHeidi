CREATE TABLE Clientes (
idCliente INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
dataNascimento DATETIME NOT NULL,
celular CHAR(11) NOT NULL,
cpf CHAR(11) NOT NULL,
tipoLogradouro VARCHAR(15),
nomeLogradouro VARCHAR(50) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT 'não existe',
cidade VARCHAR(30) NOT NULL,
cep CHAR(8) NOT NULL,
estado CHAR(2) NOT NULL,
CONSTRAINT PRIMARY KEY(idCliente),
CONSTRAINT ck_tipoLogradouro CHECK (tipoLogradouro='Praça' OR tipoLogradouro='Rua' OR tipoLogradouro='Avenida' OR tipoLogradouro='Rodovia' OR tipoLogradouro='Viela')

);


DROP TABLE CLIENTE
DROP TABLE tipoconta

SELECT * FROM CLIENTES

CREATE TABLE TiposConta(
idTipoConta INT AUTO_INCREMENT NOT NULL,
nomeTipoconta VARCHAR(20) NOT NULL,
CONSTRAINT PRIMARY KEY (idTipoConta),
CONSTRAINT UNIQUE (nomeTipoConta)
);

CREATE TABLE Contas(
idConta INT AUTO_INCREMENT NOT NULL,
numeroConta CHAR(8) NOT NULL,
saldo DECIMAL(10,2) NOT NULL, 
limite DECIMAL(10,2) NOT NULL, 
statusConta CHAR(1) DEFAULT '1', /* 1 é ativa*/ 
idTipoConta INT NOT NULL,
CONSTRAINT PRIMARY KEY (idConta),
CONSTRAINT fk_Contas_TiposConta FOREIGN KEY (idTipoConta)
REFERENCES TiposConta(idTipoConta),
CONSTRAINT CK_Saldo CHECK (saldo>=0) 
);

SELECT * FROM contas

CREATE TABLE ClientesContas(
idCliente INT NOT NULL,
idConta INT NOT NULL,
CONSTRAINT PRIMARY KEY (idCliente,idConta),/*PK Composta*/
CONSTRAINT FK_ClientesContas_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
CONSTRAINT FK_ClientesContas_Contas FOREIGN KEY (idConta) REFERENCES contas(idConta)
);
