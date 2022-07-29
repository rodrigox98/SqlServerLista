CREATE DATABASE dt_marketplace;
USE dt_marketplace;

CREATE TABLE tb_usuarios(
	Id_usuarios		INT		PRIMARY KEY IDENTITY NOT NULL,
	Nome			VARCHAR(45)					 NOT NULL,
	Usuario			VARCHAR(45)					 NOT NULL,
	Senha			VARCHAR(100)				 NOT NULL,
	Tipo			VARCHAR(255)				 NOT NULL,
	Url_foto		VARCHAR(100)				 NOT NULL,
);

CREATE TABLE tb_categorias(
	Id_categoria	INT		PRIMARY KEY IDENTITY NOT NULL,
	Categoria		VARCHAR(45)					 NOT NULL
);
CREATE TABLE tb_produtos(
	Id_produto	   INT	   PRIMARY KEY IDENTITY NOT NULL,
	Produto		   VARCHAR(45)					NOT NULL,
	Descricao	   VARCHAR(100)					NOT NULL,
	Valor		   FLOAT						NOT NULL,
	Url_imagem	   VARCHAR(100)					NOT NULL,
	FK_Criador	   INT							NOT NULL,
	FK_Categoria   INT					NOT NULL,
	FOREIGN KEY	   (FK_Criador)    REFERENCES   tb_usuarios   (Id_usuarios),
	FOREIGN KEY    (FK_Categoria)  REFERENCES   tb_categorias (Id_categoria)  
);
CREATE TABLE tb_compras(
	FK_Usuario	   INT,
	FK_Produto	   INT,
	Data_Compra	   DATE
	FOREIGN KEY		(FK_Usuario)  REFERENCES   tb_usuarios  (Id_usuarios),
	FOREIGN KEY		(FK_Produto)  REFERENCES   tb_produtos  (Id_produto)
	
);

DROP TABLE tb_compras;


SELECT * FROM tb_usuarios;
SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;

--INSERTS
INSERT INTO tb_usuarios VALUES('Rodrigo','Rodrigox98','123456789','ADM', 'UrlDoRodrigo');
INSERT INTO tb_usuarios VALUES('Michelangelo','michelangelinho123','159357','ADM', 'UrlDoMichelangelo');

INSERT INTO tb_categorias VALUES ('Livro');
INSERT INTO tb_categorias VALUES ('Jogos');

INSERT INTO tb_produtos VALUES ('The Witcher 3 Wild Hunt', 'Melhor RPG já lançado, Gerald!!! APENAS', 700, 'FotoDoGeraldo', 1,2);
INSERT INTO tb_produtos VALUES ('Duna', 'Melhor ficção científica, Gerald!!! APENAS', 900.00, 'FotoDeDuna', 2,1); 

INSERT INTO tb_compras VALUES (1,1, '2022-07-28');
INSERT INTO tb_compras VALUES (2,2, '2022-07-28');




--SELECTS
SELECT Produto, Valor FROM tb_produtos WHERE Produto Like 'Duna';