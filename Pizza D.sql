SELECT db_pizzaria_legal.tb_pizza.tamanho_pizza AS "Tamanho", db_pizzaria_legal.tb_categorias.Salgadas AS "Sabor"
FROM db_pizzaria_legal.tb_pizza
INNER JOIN db_pizzaria_legal.tb_categorias
ON db_pizzaria_legal.tb_pizza.idtb_pizza = tb_categorias_idtb_categorias;