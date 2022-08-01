USE dt_classificados;


SELECT * FROM tb_usuarios;
SELECT * FROM tb_anuncios;


SELECT u.Nome AS Nome, v.Titulo AS Anuncia, v.Descricao AS 'que é'
FROM tb_usuarios AS u
INNER JOIN tb_anuncios AS v ON u.Id_usuario = v.FK_usuario;


SELECT u.Nome AS Nome,
	COUNT(*) AS 'Números de produtos anunciados'
FROM tb_usuarios AS u
	INNER JOIN tb_anuncios AS v ON u.Id_usuario = v.FK_usuario
	GROUP BY u.Nome;

SELECT * FROM tb_anuncios
WHERE Descricao LIKE '%LOL%';
