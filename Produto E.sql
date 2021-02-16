SELECT db_farmacia_do_bem.tb_produto.Marca AS " Marca ", db_farmacia_do_bem.tb_categoria.Qualidade AS "Qualidade"
FROM db_farmacia_do_bem.tb_produto
INNER JOIN db_farmacia_do_bem.tb_categoria
ON db_farmacia_do_bem.tb_categoria.idtb_categoria= tb_categoria_idtb_categoria
WHERE db_farmacia_do_bem.tb_produto.Marca LIKE "JAMU";
