CREATE DATABASE cuphead;
USE cuphead;

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45)
);

CREATE TABLE chefe (
idChefe INT PRIMARY KEY AUTO_INCREMENT,
foto VARCHAR(100),
nome VARCHAR(45),
regiao VARCHAR(45)
);

CREATE TABLE votoUsuario (
idVotoUsuario INT,
fkUsuario INT,
CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
fkChefe INT,
CONSTRAINT fkChefe FOREIGN KEY (fkChefe) REFERENCES chefe(idChefe),
CONSTRAINT pkComposta PRIMARY KEY (idVotoUsuario, fkUsuario, kfChefe),
dificuldade VARCHAR(45)
);