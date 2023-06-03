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
    
INSERT INTO usuario VALUES 
(null, 'Henrique', 'henrique@hotmail.com', '12345678'),
(null, 'Robélia', 'robelia@hotmail.com', '12345678'),
(null, 'Oldair', 'oldair@hotmail.com', '12345678'),
(null, 'Railda', 'railda@hotmail.com', '12345678'),
(null, 'Laurita', 'laurita@hotmail.com', '12345678');

INSERT INTO votoUsuario VALUES 
	(null, 1, 1, 'Médio'),
	(null, 1, 2, 'Fácil'),
	(null, 1, 3, 'Muito Difícil'),
	(null, 1, 4, 'Muito Difícil'),
	(null, 1, 5, 'Fácil'),
	(null, 1, 6, 'Difícil'),
	(null, 1, 7, 'Muito Difícil'),
	(null, 1, 8, 'Muito Difícil'),
	(null, 1, 9, 'Muito Difícil'),
	(null, 1, 10, 'Fácil'),
	(null, 1, 11, 'Muito Difícil'),
	(null, 1, 12, 'Difícil'),
	(null, 1, 13, 'Médio'),
	(null, 1, 14, 'Médio'),
	(null, 1, 15, 'Muito Difícil'),
	(null, 1, 16, 'Muito Difícil'),
	(null, 1, 17, 'Muito Difícil'),
	(null, 1, 18, 'Fácil'),
	(null, 1, 19, 'Muito Difícil');
    
INSERT INTO votoUsuario VALUES 
	(null, 2, 1, 'Médio'),
	(null, 2, 2, 'Fácil'),
	(null, 2, 3, 'Muito Difícil'),
	(null, 2, 4, 'Muito Difícil'),
	(null, 2, 5, 'Fácil'),
	(null, 2, 6, 'Difícil'),
	(null, 2, 7, 'Muito Difícil'),
	(null, 2, 8, 'Muito Difícil'),
	(null, 2, 9, 'Muito Difícil'),
	(null, 2, 10, 'Fácil'),
	(null, 2, 11, 'Muito Difícil'),
	(null, 2, 12, 'Difícil'),
	(null, 2, 13, 'Médio'),
	(null, 2, 14, 'Médio'),
	(null, 2, 15, 'Muito Difícil'),
	(null, 2, 16, 'Muito Difícil'),
	(null, 2, 17, 'Muito Difícil'),
	(null, 2, 18, 'Fácil'),
	(null, 2, 19, 'Muito Difícil');
    
    INSERT INTO votoUsuario VALUES 
	(null, 3, 1, 'Muito Difícil'),
	(null, 3, 2, 'Fácil'),
	(null, 3, 3, 'Médio'),
	(null, 3, 4, 'Difícil'),
	(null, 3, 5, 'Fácil'),
	(null, 3, 6, 'Difícil'),
	(null, 3, 7, 'Médio'),
	(null, 3, 8, 'Muito Difícil'),
	(null, 3, 9, 'Muito Difícil'),
	(null, 3, 10, 'Fácil'),
	(null, 3, 11, 'Muito Difícil'),
	(null, 3, 12, 'Muito Difícil'),
	(null, 3, 13, 'Médio'),
	(null, 3, 14, 'Médio'),
	(null, 3, 15, 'Médio'),
	(null, 3, 16, 'Médio'),
	(null, 3, 17, 'Médio'),
	(null, 3, 18, 'Fácil'),
	(null, 3, 19, 'Muito Difícil');

INSERT INTO votoUsuario VALUES 
	(null, 4, 1, 'Muito Difícil'),
	(null, 4, 2, 'Fácil'),
	(null, 4, 3, 'Médio'),
	(null, 4, 4, 'Muito Difícil'),
	(null, 4, 5, 'Fácil'),
	(null, 4, 6, 'Muito Difícil'),
	(null, 4, 7, 'Médio'),
	(null, 4, 8, 'Muito Difícil'),
	(null, 4, 9, 'Muito Difícil'),
	(null, 4, 10, 'Fácil'),
	(null, 4, 11, 'Muito Difícil'),
	(null, 4, 12, 'Muito Difícil'),
	(null, 4, 13, 'Médio'),
	(null, 4, 14, 'Médio'),
	(null, 4, 15, 'Médio'),
	(null, 4, 16, 'Médio'),
	(null, 4, 17, 'Muito Difícil'),
	(null, 4, 18, 'Fácil'),
	(null, 4, 19, 'Médio');    
    
INSERT INTO votoUsuario VALUES 
	(null, 4, 1, 'Médio'),
	(null, 4, 2, 'Fácil'),
	(null, 4, 3, 'Médio'),
	(null, 4, 4, 'Médio'),
	(null, 4, 5, 'Fácil'),
	(null, 4, 6, 'Médio'),
	(null, 4, 7, 'Médio'),
	(null, 4, 8, 'Difícil'),
	(null, 4, 9, 'Médio'),
	(null, 4, 10, 'Fácil'),
	(null, 4, 11, 'Nédio'),
	(null, 4, 12, 'Médio'),
	(null, 4, 13, 'Médio'),
	(null, 4, 14, 'Médio'),
	(null, 4, 15, 'Médio'),
	(null, 4, 16, 'Médio'),
	(null, 4, 17, 'Médio'),
	(null, 4, 18, 'Fácil'),
	(null, 4, 19, 'Muito Difícil');    
    
    INSERT INTO votoUsuario VALUES 
	(null, 4, 1, 'Médio'),
	(null, 4, 2, 'Fácil'),
	(null, 4, 3, 'Médio'),
	(null, 4, 4, 'Médio'),
	(null, 4, 5, 'Fácil'),
	(null, 4, 6, 'Médio'),
	(null, 4, 7, 'Médio'),
	(null, 4, 8, 'Médio'),
	(null, 4, 9, 'Muito Difícil'),
	(null, 4, 10, 'Fácil'),
	(null, 4, 11, 'Nédio'),
	(null, 4, 12, 'Médio'),
	(null, 4, 13, 'Médio'),
	(null, 4, 14, 'Médio'),
	(null, 4, 15, 'Médio'),
	(null, 4, 16, 'Médio'),
	(null, 4, 17, 'Médio'),
	(null, 4, 18, 'Fácil'),
	(null, 4, 19, 'Muito Difícil');    
    
INSERT INTO votoUsuario VALUES 
	(null, 5, 1, 'Médio'),
	(null, 5, 2, 'Fácil'),
	(null, 5, 3, 'Médio'),
	(null, 5, 4, 'Médio'),
	(null, 5, 5, 'Fácil'),
	(null, 5, 6, 'Médio'),
	(null, 5, 7, 'Médio'),
	(null, 5, 8, 'Médio'),
	(null, 5, 9, 'Muito Difícil'),
	(null, 5, 10, 'Fácil'),
	(null, 5, 11, 'Nédio'),
	(null, 5, 12, 'Médio'),
	(null, 5, 13, 'Médio'),
	(null, 5, 14, 'Médio'),
	(null, 5, 15, 'Médio'),
	(null, 5, 16, 'Médio'),
	(null, 5, 17, 'Médio'),
	(null, 5, 18, 'Fácil'),
	(null, 5, 19, 'Muito Difícil');    