CREATE TABLE funcionarios (
	idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    telefone CHAR(9),
    salario INT CONSTRAINT CHECK (salario > 0),
    fkSetor INT, 
		CONSTRAINT fkSetor FOREIGN KEY (fkSetor)
			REFERENCES setor (idSetor)) AUTO_INCREMENT = 01;
            
CREATE TABLE setor (
	idSetor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    andar INT) AUTO_INCREMENT = 101;
    
CREATE TABLE acompanhantes (
	idAcompanhante INT AUTO_INCREMENT,
    nome VARCHAR(45),
    parentesco VARCHAR(45),
    dtNasc DATE,
    fkFuncionario INT,
		CONSTRAINT fkFuncionario FOREIGN KEY (fkFuncionario)
			REFERENCES funcionarios (idFuncionario),
				CONSTRAINT pkFuncionario PRIMARY KEY (idAcompanhante, fkFuncionario)) AUTO_INCREMENT = 201;
                
SELECT * FROM setor;
SELECT * FROM funcionarios;
SELECT * FROM acompanhantes;
DESC setor;
DESC acompanhantes;
DESC funcionarios;

INSERT INTO setor VALUES
	(NULL,'cozinha','1'),
    (NULL,'lounge','2');
    
INSERT INTO funcionarios VALUES
	(NULL,'anthony bento','970247506','4500','101'),
    (NULL,'pedro valerio','970167506','4300','101'),
    (NULL,'ramildo bento','970201506','3800','102'),
    (NULL,'drielly alana','970816728','3800','102');
	
INSERT INTO acompanhantes VALUES
	(NULL,'audiene maria','mãe','1960-03-04','1'),
    (NULL,'pedro paulo','irmão','2004-05-04','1'),
    (NULL,'audiene maria','mãe','1960-03-04','3'),
    (NULL,'pedro primon','irmão','1960-03-05','4');

SELECT * FROM setor 
	JOIN funcionarios 
		ON fkSetor = idSetor;
        
SELECT * FROM setor
	JOIN funcionarios
		ON fkSetor = idSetor
			WHERE setor.nome = 'cozinha';
            
SELECT * FROM funcionarios
	JOIN acompanhantes 
		ON fkFuncionario = idFuncionario;
        
UPDATE acompanhantes SET nome = 'julio cesar' WHERE idAcompanhante = 203;

SELECT * FROM funcionarios  
	JOIN acompanhantes 
		ON fkFuncionario = idFuncionario
			WHERE funcionarios.nome = 'anthony bento';
            
SELECT * FROM funcionarios
	JOIN setor
		ON fkSetor = idSetor
			JOIN acompanhantes 
				ON fkFuncionario = idFuncionario;

