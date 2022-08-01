USE db_rede_social;


INSERT INTO tb_usuarios VALUES ('Larissa', 'Lari', '1234656789', 'FotoDaLarissa');
INSERT INTO tb_grupos VALUES ('Corintianos FIEIS','Vai Corinthians FOREVER','FotoDoGrupo',1);
INSERT INTO tb_postagens VALUES('Corinthias ganhou', 'Corinthians é mto bom sempre ganha','FotoDoJogo','2022-07-29',3,1);
INSERT INTO tb_inscritos VALUES (3,1,'2022-07-29');

SELECT * FROM tb_usuarios;
SELECT * FROM tb_grupos;
SELECT * FROM tb_inscritos;
SELECT * FROM tb_postagens;


SELECT u.Nome, v.Grupo AS 'No grupo', p.Descricao AS Postou
FROM tb_usuarios AS u 
INNER JOIN tb_grupos AS v ON u.Id_usuarios = v.FK_Criador
INNER JOIN tb_postagens AS p ON u.Id_usuarios = p.FK_Criador;


SELECT u.Nome AS Nome,
	COUNT(*) AS 'Total de posts'
FROM tb_usuarios AS u
	INNER JOIN tb_postagens AS p ON u.Id_usuarios = p.FK_Criador
	GROUP BY u.Nome;