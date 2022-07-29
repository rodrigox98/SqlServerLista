CREATE DATABASE db_rede_social;
USE				db_rede_social;

CREATE TABLE tb_usuarios(
	Id_usuarios		INT		PRIMARY KEY IDENTITY NOT NULL,
	Nome			VARCHAR(45)					 NOT NULL,
	Usuario			VARCHAR(45)					 NOT NULL,
	Senha			VARCHAR(100)				 NOT NULL,
	Url_foto		VARCHAR(100)				 NOT NULL,
);


CREATE TABLE tb_grupos(
	Id_grupos	   INT	   PRIMARY KEY IDENTITY NOT NULL,
	Grupo		   VARCHAR(45)					NOT NULL,
	Descricao	   VARCHAR(100)					NOT NULL,
	Url_imagem	   VARCHAR(100)					NOT NULL,
	FK_Criador	   INT							NOT NULL,
	FOREIGN KEY	   (FK_Criador)    REFERENCES   tb_usuarios (Id_usuarios),
);
CREATE TABLE tb_postagens(
	Id_postagem		INT		PRIMARY KEY IDENTITY NOT NULL,
	Titulo			VARCHAR(50)					 NOT NULL,
	Descricao		VARCHAR(1000)				 NOT NULL,
	Url_imagem		VARCHAR(100)				 NOT NULL,
	Data_postagem	DATE						 NOT NULL,
	FK_Criador		INT							 NOT NULL,
	FK_Grupo		INT							 NOT NULL,
	FOREIGN KEY		(FK_Criador)	REFERENCES tb_usuarios	     (Id_usuarios),
	FOREIGN KEY		(FK_Grupo)      REFERENCES tb_grupos		 (Id_grupos)
	
);


CREATE TABLE tb_inscritos(
	FK_usuario	INT		NOT NULL,
	FK_grupo	INT	    NOT NULL,
	Data_Inscrito	DATE,
	FOREIGN KEY (FK_usuario)	REFERENCES  tb_usuarios	(Id_usuarios),
	FOREIGN KEY (FK_Grupo)		REFERENCES	tb_grupos	(Id_Grupos)
);


SELECT * FROM tb_grupos;
SELECT * FROM tb_inscritos;
SELECT * FROM tb_postagens;
SELECT * FROM tb_usuarios;



--INSERTS 
INSERT INTO tb_usuarios VALUES ('Rodrigo', 'Rodrigox98', '123465', 'FotoDoRodrigo');

INSERT INTO tb_grupos VALUES ('Corintianos','Vai Corinthians','FotoDoGrupo',1);

INSERT INTO tb_postagens VALUES('Corithians perde', 'Time sem vergonha para de perder para time que vai ser rebaixado','FotoDoJogo','2022-07-28',1,1);

INSERT INTO tb_inscritos VALUES (1,1,'2022-07-28');

SELECT Grupo, Descricao FROM tb_grupos WHERE Grupo LIKE ('%Corin%');

DROP TABLE tb_inscritos;
DROP TABLE tb_grupos;
DROP TABLE tb_postagens;
DROP TABLE tb_usuarios;