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
    PRIMARY KEY (idcliente)
);

CREATE TABLE Loja(
    idloja INT NOT NULL auto_increment,
    emailloja VARCHAR(64) NOT NULL UNIQUE,
    senhaloja VARCHAR(64) NOT NULL,
    cnpj VARCHAR(15),
    nomeloja VARCHAR(64),
    descricao VARCHAR(256),
    PRIMARY KEY (idloja)
);

CREATE TABLE Carro(
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(64),
    chassi VARCHAR(32) NOT NULL UNIQUE,
    ano INTEGER,
    km INTEGER,
    descricaocarro VARCHAR(256),
    valor FLOAT,
    lojacarro VARCHAR(64),
    FOREIGN KEY (lojacarro) REFERENCES Loja(emailloja) ON DELETE CASCADE
);

CREATE TABLE Proposta(
    id INT NOT NULL auto_increment,
    valorproposta FLOAT,
    condicoes VARCHAR(256),
    dataatual VARCHAR(20),
    statusproposta VARCHAR(20),
    clienteproposta INT,
    placaproposta VARCHAR(10),
    FOREIGN KEY (clienteproposta) REFERENCES Usuario(idcliente),
    FOREIGN KEY (placaproposta) REFERENCES Carro(placa),
    PRIMARY KEY (id)
);

INSERT INTO Usuario(email, senha, papel) VALUES ('admin', 'admin', 'ADMIN');
INSERT INTO Usuario(email, senha, cpf, nome, telefone, sexo, datanasc, papel) VALUES ('emailteste@teste', '123', '123456', 'Jao', 'telefone', 'M', '12/13/1821', 'CLIENTE');
INSERT INTO Loja(emailloja, senhaloja, cnpj, nomeloja, descricao) VALUES ('emailloja@teste', '321', 'issoeumcnpj', 'Lojateste', 'Isso e uma descricao');
INSERT INTO Carro(placa, modelo, chassi, ano, km, descricaocarro, valor) VALUES ('ABC-1234', 'Chevette', 'chassi1', 1980, 100, 'Outra descricao', 1000);
INSERT INTO Carro(placa, modelo, chassi, ano, km, descricaocarro, valor) VALUES ('ABC-4321', 'Ferrari', 'chassi2', 1980, 200, 'Outra descricao', 20000);
INSERT INTO Carro(placa, modelo, chassi, ano, km, descricaocarro, valor) VALUES ('ABC-2222', 'Siena', 'chassi3', 1980, 300, 'Outra descricao', 300000);
