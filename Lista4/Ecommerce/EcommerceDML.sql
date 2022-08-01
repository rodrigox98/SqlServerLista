USE dt_Ecommerce; 


SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;


SELECT u.Nome AS Usuario,p.Produto,  c.FK_produto
FROM tb_usuarios AS u
INNER JOIN tb_produtos AS p 
INNER JOIN tb_compras  AS c ON p.Id = c.FK_produto;

SELECT u.Nome, p.Produto
FROM tb_usuarios AS u
INNER JOIN tb_produtos AS p 