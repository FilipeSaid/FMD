CREATE DATABASE car_vendor;
USE car_vendor;


#Cria a tabela Veículos
CREATE TABLE Veiculos
(
Id_veiculo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Placa_Veiculo VARCHAR (7),
Marca_Veiculo VARCHAR (20),
Ano_Veiculo DATE
);

#Cria a tabela Vendedores
CREATE TABLE Vendedores
(
Id_Vendedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nome_Vendedor VARCHAR (45),
Id_Veiculo INT,
FOREIGN KEY (Id_Veiculo)
REFERENCES veiculos (Id_veiculo)
);


#Criar a tabela clientes
CREATE TABLE clientes
(
CPF_Cliente INTEGER NOT NULL PRIMARY KEY,
Nome_Cliente VARCHAR (45)
);

#Cria a tabela Vendas
CREATE TABLE Vendas
(
Cod_Venda INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Id_Vendedor INT,
Id_veiculo INT,
Data_Venda DATE,
CPF_Cliente INT,
FOREIGN KEY (CPF_Cliente) REFERENCES clientes (CPF_Cliente),
FOREIGN KEY (Id_Vendedor) REFERENCES vendedores (Id_Vendedor),
FOREIGN KEY (Id_veiculo) REFERENCES veiculos (Id_Veiculo)
);

#Inserindo dados no BD car_vendor tabela Veiculos
INSERT INTO Veiculos (Placa_Veiculo, Marca_Veiculo, Ano_Veiculo)
VALUES ('7885','VW BH40','2021-05-19'),
('6541','FLAT SHE','2017-05-19'),
('5023','VW BH40','2018-05-19'),
('2478','SANI ZAND','2018-05-18');
#CONSULTA TABELA VEICULOS
SELECT * FROM Veiculos;

#Inserindo dados no BD car_vendor tabela VENDEDORES
INSERT INTO Vendedores (Nome_Vendedor)
VALUES ('Paula'),
('Ana'),
('Lucas'),
('Daniel'),
('Gustavo');
#ALTERANDO NOME DO VENDEDOR GUSTAVO
UPDATE Vendedores SET Nome_Vendedor = 'Gustavo M.' WHERE Id_Vendedor = 5;
#CONSULTA TABELA VENDEDORES
SELECT * FROM Vendedores;

#Inserindo dados no BD car_vendor tabela CLIENTES
INSERT INTO clientes (CPF_Cliente, Nome_Cliente)
VALUES ('8642','Marcos'),
(78412,'Pedro'),
(2154,'Tais'),
(36654,'Vanessa');
#CONSULTA TABELA CLIENTES
SELECT * FROM clientes;


#Inserindo dados no BD car_vendor tabela VENDAS
INSERT INTO Vendas (Id_veiculo, CPF_Cliente, Id_Vendedor)
VALUES (1,'8642',1),
(2,'78412',1),
(3,'2154',3),
(4,'36654',2);
#CONSULTA TABELA VENDAS
SELECT * FROM Vendas;
#DELETANDO REGISTRO DA SEGUNDA VENDA
DELETE FROM Vendas WHERE Cod_Venda= 14;

#CONSULTANDO VENDA MODELO BH40 ORDENADO PELO NÚMERO PLACA
SELECT Marca_Veiculo, Placa_Veiculo FROM Veiculos WHERE Marca_Veiculo= 'VW BH40' ORDER BY Placa_Veiculo DESC;
CPF_Cliente INTEGER NOT NULL PRIMARY KEY,
Nome_Cliente VARCHAR (45),
Cod_Venda INT,
FOREIGN KEY (Cod_Venda)
REFERENCES Vendas (Cod_Venda)
);




