CREATE TABLE pet (
idPet INT AUTO_INCREMENT,
tipo VARCHAR(45),
nome VARCHAR(45),
raça VARCHAR(45),
dtNasc DATE,
fkCliente INT,
	CONSTRAINT fkCliente FOREIGN KEY (fkCliente)
		REFERENCES cliente (idCliente),
			CONSTRAINT pkPet PRIMARY KEY (idPet, fkCliente)) AUTO_INCREMENT = 101;
            
CREATE TABLE cliente (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nomeCompleto VARCHAR(45),
telFixo CHAR(8),
telCel CHAR(9),
cep CHAR(8)) AUTO_INCREMENT = 1;

SELECT * FROM pet;
SELECT * FROM cliente;
DESC cliente;
DESC pet;

INSERT INTO cliente VALUES 
	(NULL,'Anthony Bento Silva Ferreira','40411472','970816505','08121722'),
    (NULL,'Rodrigo Faro Ferreira','40414325','970268505','01278522'),
    (NULL,'Juninho da CB300','40201472','970812605','08121862'),
    (NULL,'Gabriel da Trembolona','40412682','970812465','08112322');
    
    
INSERT INTO pet VALUES
	(NULL,'cachorro','xuxa','vira-lata','2002-12-02','1'),
    (NULL,'cachorro','menezes','pitbull','2003-02-02','1'),
    (NULL,'cachorro','theo','shitzu','2002-04-03','2'),
    (NULL,'gato','manoel','siâmes','2004-12-05','3'),
    (NULL,'cavalo','dolores','campolina','2005-11-12','4');
    
ALTER TABLE cliente MODIFY COLUMN nomeCompleto VARCHAR(50);

SELECT * FROM pet WHERE tipo = 'cachorro';

SELECT nome, dtNasc FROM pet;

SELECT * FROM pet ORDER BY nome;

SELECT * FROM cliente ORDER BY cep DESC;

SELECT nome FROM pet WHERE nome LIKE 'd%';

SELECT * FROM cliente WHERE nomeCompleto LIKE '%Ferreira%';

UPDATE cliente SET telFixo = '40412562' WHERE idCliente = 1;

SELECT * FROM cliente
	JOIN pet
		ON fkCliente = idCliente;
        
SELECT * FROM cliente
	JOIN pet
		ON fkCliente = idCliente
			WHERE idCliente = 1;
            
DELETE FROM pet WHERE idPet = 102;

SELECT * FROM pet;
SELECT * FROM cliente;
DROP TABLE pet;
DROP TABLE cliente;
        




