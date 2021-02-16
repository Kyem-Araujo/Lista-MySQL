
SELECT db_cidade_das_carnes.tb_produto.valor_carne AS "Custo", db_cidade_das_carnes.tb_categoria.sub_categoria AS "Categoria"
FROM db_cidade_das_carnes.tb_produto
INNER JOIN db_cidade_das_carnes.tb_categoria
on db_cidade_das_carnes.tb_categoria.idtb_produto=tb_categoria_idtb_produto
WHERE db_cidade_das_carnes.tb_produto.valor_carne between 20 and 100;

