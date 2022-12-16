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


#Cria a tabela Vendas
CREATE TABLE Vendas
(
Cod_Venda INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Id_Vendedor INT,
Id_veiculo INT,
Data_Venda DATE,
FOREIGN KEY (Id_Vendedor) REFERENCES vendedores (Id_Vendedor),
FOREIGN KEY (Id_veiculo) REFERENCES veiculos (Id_Veiculo)
);

#Criar a tabela clientes
CREATE TABLE clientes
(
CPF_Cliente INTEGER NOT NULL PRIMARY KEY,
Nome_Cliente VARCHAR (45),
Cod_Venda INT,
FOREIGN KEY (Cod_Venda)
REFERENCES Vendas (Cod_Venda)
);




