DROP DATABASE IF EXISTS Sistema;

CREATE DATABASE Sistema;

USE Sistema

CREATE TABLE Usuario(
    idcliente INT NOT NULL auto_increment, 
    email VARCHAR(64) NOT NULL, 
    senha VARCHAR(64) NOT NULL, 
    cpf VARCHAR(12), 
    nome VARCHAR(64), 
    telefone VARCHAR(11), 
    sexo VARCHAR(1), 
    datanasc VARCHAR(20), 
    papel VARCHAR(20) NOT NULL, 
    PRIMARY KEY (id)
);

CREATE TABLE Loja(
    idloja INT NOT NULL auto_increment,
    emailloja VARCHAR(64) NOT NULL,
    senhaloja VARCHAR(64) NOT NULL,
    cnpj VARCHAR(15),
    nomeloja VARCHAR(64)
    descricao VARCHAR(256)
);

CREATE TABLE Carro(
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(64),
    chassi VARCHAR(32) NOT NULL UNIQUE,
    ano INTEGER,
    km INTEGER,
    descricaocarro VARCHAR(256),
    valor FLOAT
    FOREIGN KEY (idloja) REFERENCES Loja(idloja), ON DELETE CASCADE
)

CREATE TABLE Proposta(
    id INT NOT NULL auto_increment,
    valorproposta FLOAT,
    condicoes VARCHAR(256),
    dataatual VARCHAR(20),
    status VARCHAR(20),
    data VARCHAR(20),
    FOREIGN KEY (idcliente) REFERENCES Usuario(idcliente),
    FOREIGN KEY (placa) REFERENCES Carro(placa)
)

INSERT INTO Usuario(email, senha, papel) VALUES ('admin', 'admin', 'ADMIN');
INSERT INTO Usuario VALUES ('emailteste@teste', '123', '123456', 'Jao', 'telefone', 'M', '12/13/1821', 'CLIENTE');
INSERT INTO Loja VALUES ('emailloja@teste', '321', 'issoeumcnpj', 'Lojateste', 'Isso e uma descricao');
INSERT INTO Carro VALUES ('ABC-4321', 'Chevette', 'chassi', 1980, 100000, 'Outra descricao', 1000);
