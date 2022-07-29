CREATE DATABASE dt_classificados;
USE dt_classificados;

CREATE TABLE tb_usuarios(
	Id_usuario INT		PRIMARY KEY IDENTITY	NOT NULL,
	Nome		VARCHAR(45)		NOT NULL,
	Usuario		VARCHAR(45)		NOT NULL,
	Senha		VARCHAR(100)	NOT NULL,
	Pessoa		VARCHAR(255)	NOT NULL,
	Ulr_Imagem	VARCHAR(100)	NOT NULL
	);

CREATE TABLE tb_anuncios(
	Id_anuncio INT		PRIMARY KEY IDENTITY	NOT NULL,
	Titulo		VARCHAR(45)		NOT NULL,
	Descricao	VARCHAR(1000)	NOT NULL,
	Contato		VARCHAR(50)		NOT NULL,
	Url_Imagem	VARCHAR(100)	NOT NULL,
	Data_anuncio	DATE		NOT NULL,
	FK_usuario		INT,
	FOREIGN KEY		(FK_usuario) REFERENCES tb_usuarios (Id_usuario)
	);


SELECT * FROM tb_usuarios;
SELECT * FROM tb_anuncios;

INSERT INTO tb_usuarios VALUES ('Rodrigo Lima','RodrigoX98', '123456', 'FIS', 'FotoRodrigo');
INSERT INTO tb_usuarios VALUES ('Farmacia xD','FarmaciaxD', '123456', 'JUR', 'FotoFarmacia');

INSERT INTO tb_anuncios VALUES ('Venda Conta','Venda de conta do LOL diamante IV','119123456789','FotoConta', '2022-07-28' , 1);
INSERT INTO tb_anuncios VALUES ('Venda Remedio','Este remédio é mto bom para dor de cabeça','119987654321','FotoFarmaciaPubli', '2022-07-28' , 2);

SELECT Nome, Pessoa FROM tb_usuarios;
SELECT * FROM tb_anuncios WHERE FK_usuario = 2;



