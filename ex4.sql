USE SPTech;

CREATE TABLE treinador (
	idTreinador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    celular CHAR(9),
    email VARCHAR(45),
    experiencia VARCHAR(20)
		CONSTRAINT chkExperiencia 
			CHECK (experiencia IN ('novato','experiente')),
				fkTreinador INT,
					CONSTRAINT fkTreinador FOREIGN KEY (fkTreinador)
						REFERENCES treinador (idTreinador)) AUTO_INCREMENT = 10;
            
CREATE TABLE nadador (
	idNadador INT AUTO_INCREMENT,
    nome VARCHAR(45),
    estado VARCHAR(45),
    dtNasc DATE,
	fkProf INT,
		CONSTRAINT fkProf FOREIGN KEY (fkProf)
			REFERENCES treinador (idTreinador),
				CONSTRAINT idNadador PRIMARY KEY (idNadador, fkProf)) AUTO_INCREMENT = 100;

DESC treinador;
DESC nadador;

INSERT INTO treinador VALUES
	(NULL,'anthony bento','970816506','anthony.bento@gmail.com','experiente',NULL),
    (NULL,'rodrigo faro','970283806','rodrigo.faro@gmail.com','novato','10'),
    (NULL,'gabriel vaz','970827109','gabriel.vaz@gmail.com','novato','10');
    
INSERT INTO nadador VALUES 
	(NULL,'gabriel rodrigues','são paulo','2001-02-07',10),
    (NULL,'rogério ceni','são paulo','2001-05-08',10);
	
SELECT * FROM treinador;
SELECT * FROM nadador;

SELECT * FROM treinador
	JOIN nadador
		ON fkProf = idTreinador;
        
SELECT * FROM treinador
	JOIN nadador
		ON fkProf = idTreinador
			WHERE treinador.nome = 'anthony bento';
            
SELECT * FROM treinador
	JOIN treinador AS orientador
		ON treinador.fkTreinador = orientador.idTreinador;
        
SELECT * FROM treinador
	JOIN treinador AS orientador
		ON treinador.fkTreinador = orientador.idTreinador
			WHERE orientador.nome = 'anthony bento';
            
SELECT * FROM treinador
	JOIN nadador
		ON fkProf = idTreinador
			JOIN treinador AS orientador
				ON treinador.fkTreinador = orientador.idTreinador;
                
SELECT * FROM treinador
	JOIN nadador
		ON fkProf = idTreinador
			JOIN treinador AS orientador
				ON treinador.fkTreinador = orientador.idTreinador
					WHERE treinador.nome = 'rodrigo faro';
                    
SELECT * FROM treinador
	JOIN nadador
		ON fkProf = idTreinador
			JOIN treinador AS orientador
				ON treinador.fkTreinador = orientador.idTreinador;
                

        

        
	

        
