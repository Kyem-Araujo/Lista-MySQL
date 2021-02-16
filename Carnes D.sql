
select db_cidade_das_carnes.tb_produto.origem as " Tipo ", db_cidade_das_carnes.tb_categoria.qualidade as "Qualidade"
From db_cidade_das_carnes.tb_produto
Inner join db_cidade_das_carnes.tb_categoria
on db_cidade_das_carnes.tb_categoria.idtb_produto= tb_categoria_idtb_produto;