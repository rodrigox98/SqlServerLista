USE dt_marketplace;


SELECT * FROM tb_usuarios;
SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;

SELECT u.Nome, p.Produto AS Comprou, p.Valor AS 'por R$'
FROM tb_usuarios AS u
INNER JOIN tb_produtos AS p ON u.Id_usuarios = p.FK_Criador;



SELECT u.Nome AS Nome,
	COUNT(*) AS 'Total de compras'
FROM tb_usuarios AS u
	INNER JOIN tb_produtos AS p ON u.Id_usuarios = p.FK_Criador
	GROUP BY u.Nome;


SELECT * FROM tb_produtos
WHERE Valor BETWEEN 800 and 900;


