CREATE TABLE pessoa (
idPessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
dtNasc DATE,
profissão VARCHAR(45));

CREATE TABLE gasto (
idGasto INT AUTO_INCREMENT,
valor INT,
descrição VARCHAR(60),
fkPessoa INT, 
	CONSTRAINT fkPessoa FOREIGN KEY (fkPessoa)
		REFERENCES pessoa (idPessoa),
			CONSTRAINT pkGasto PRIMARY KEY (idGasto, fkPessoa));
            
INSERT INTO pessoa VALUES
	(NULL,'pedro valerio','2005-07-21','biomedico'),
    (NULL,'anthony bento','2004-10-16','analista de sistemas');

INSERT INTO gasto VALUES 
	(NULL,'250','conta de luz','1'),
    (NULL,'180','conta de água','1'),
    (NULL,'230','conta de luz','2'),
    (NULL,'200','conta de água','2');
    
    
SELECT * FROM pessoa;
SELECT * FROM gasto;
DESC pessoa;
DESC gasto;

SELECT * FROM pessoa;

SELECT * FROM pessoa WHERE profissão = 'analista de sistemas';

SELECT * FROM pessoa
	JOIN gasto 
		ON fkPessoa = idPessoa;
        
SELECT * FROM pessoa
	JOIN gasto 
		ON fkPessoa = idPessoa
			WHERE idPessoa = 1;
        
UPDATE gasto SET valor = '330' WHERE idGasto = 1;
UPDATE gasto SET valor = '220' WHERE idGasto = 2;
UPDATE gasto SET valor = '200' WHERE idGasto = 3;
UPDATE gasto SET valor = '150' WHERE idGasto = 1;

DROP TABLE pessoa;
DROP TABLE gasto;

