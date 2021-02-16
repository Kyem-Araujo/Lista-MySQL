SELECT db_farmacia_do_bem.tb_produto.Preco AS "Custo", db_farmacia_do_bem.tb_categoria.Departamento AS "Categoria"
FROM db_farmacia_do_bem.tb_produto
INNER JOIN db_farmacia_do_bem.tb_categoria
ON db_farmacia_do_bem.tb_categoria.idtb_categoria=tb_categoria_idtb_categoria
WHERE db_farmacia_do_bem.tb_produto.Preco between 20 AND 1000;