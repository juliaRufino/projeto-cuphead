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
idVotoUsuario INT AUTO_INCREMENT,
fkUsuario INT,
CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
fkChefe INT,
CONSTRAINT fkChefe FOREIGN KEY (fkChefe) REFERENCES chefe(idChefe),
CONSTRAINT pkComposta PRIMARY KEY (idVotoUsuario, fkUsuario, fkChefe),
dificuldade VARCHAR(45)
);

INSERT INTO chefe VALUES 
	(null, '../assets/img/chefeCenoura.svg', 'Chaunsey Chantenay', 'Ilha Tinteiro Um'),
    (null, '../assets/img/chefeBolaAzul.svg', 'Il Melecone', 'Ilha Tinteiro Um'),
    (null, '../assets/img/chefeGeni.svg', 'Geni Buarque', 'Ilha Tinteiro Um'),
    (null, '../assets/img/chefeGirassol.svg', 'Cactônio Spinoza', 'Ilha Tinteiro Um'),
    (null, '../assets/img/chefeSapo.svg', 'Escoaxo e Sopapo', 'Ilha Tinteiro Dois'),
    (null, '../assets/img/chefeGarotaDoce.svg', 'Baronesa Bombom', 'Ilha Tinteiro Dois'),
    (null, '../assets/img/chefePalhaco.svg', 'Zobo o Palhaço', 'Ilha Tinteiro Dois'),
    (null, '../assets/img/chefeGenio.svg', 'Genésio o Magnífico', 'Ilha Tinteiro Dois'),
    (null, '../assets/img/chefeDragao.svg', 'Fogo de Chão', 'Ilha Tinteiro Dois'),
    (null, '../assets/img/chefePicaPau.svg', 'Tião Gavião', 'Ilha Tinteiro Dois'),
    (null, '../assets/img/chefeAbelha.svg', 'Abélia Reale', 'Ilha Tinteiro Três'),
    (null, '../assets/img/chefePirata.svg', 'Capitão Barba-Salgada', 'Ilha Tinteiro Três'),
    (null, '../assets/img/chefePaulaProtagonista.svg', 'Paula Protagonista', 'Ilha Tinteiro Três'),
    (null, '../assets/img/chefeRatoLata.svg', 'Maus von Kampf', 'Ilha Tinteiro Três'),
    (null, '../assets/img/chefeRobo.svg', 'Robô do Dr. Kalo', 'Ilha Tinteiro Três'),
    (null, '../assets/img/chefeSereia.svg', 'Dona Lara', 'Ilha Tinteiro Três'),
    (null, '../assets/img/chefeFantasma.svg', 'Fantasma Cego', 'Ilha Tinteiro Três'),
    (null, '../assets/img/chefeReiDado.svg', 'Rei Dado', 'Ilha Tinteiro Infernal'),
    (null, '../assets/img/chefeDiabo.svg', 'Diabo', 'Ilha Tinteiro Infernal');