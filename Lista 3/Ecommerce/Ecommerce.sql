CREATE DATABASE dt_Ecommerce; 
USE dt_Ecommerce; 

CREATE TABLE tb_produtos(
	Id INT		PRIMARY KEY  NOT NULL,
	Produto		VARCHAR(45)  NOT NULL,
	Descricao	VARCHAR(100) NOT NULL,
	Valor		FLOAT		 NOT NULL,
	Estoque		VARCHAR(10)  NOT NULL CHECK (Estoque IN('CAT1', 'CAT2')),
	Url_imagem  VARCHAR(100) NOT NULL 
);

CREATE TABLE tb_usuarios(
	Id INT		PRIMARY KEY	NOT NULL,
	Nome		VARCHAR(45) NOT NULL,
	Usuario     VARCHAR(45) NOT NULL,
	Senha		VARCHAR(100)NOT NULL,
	Documento	VARCHAR(45) NOT NULL
);

CREATE TABLE tb_compras(
	FK_usuario  INT			NOT NULL,
	FK_produto  INT			NOT NULL,
	DataPost	DATE		NOT NULL, 
	FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_produto) REFERENCES tb_produtos (Id)
	);

DROP TABLE tb_produtos;
DROP TABLE tb_usuarios;


SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;

-- INSERTS

INSERT INTO tb_usuarios VALUES (1,'Rodrigo Lima','Rodrigox98','123456789','DocumentoUsuario');
INSERT INTO tb_usuarios VALUES (2,'Josivaldo','Josivaldinho','987654321','DocumentoJosivaldo');
INSERT INTO tb_usuarios VALUES (3,'Leonardo Da Vinci','leonardinho123','1593574862','DocumentoDaVinci');

INSERT INTO tb_produtos VALUES (10,'Nargas', 'Um nargas mto bom, faz bastante fumaça', 900.00, 'CAT1', 'UrlDoNargas');
INSERT INTO tb_produtos VALUES (20,'Play4','Vem com um controle junto', 2100.00, 'CAT2', 'UrlDoPlay4');

INSERT INTO tb_compras  VALUES(2, 10, '2022-07-28')

--SELECTS
SELECT * FROM tb_produtos WHERE Descricao LIKE '%nargas%';

