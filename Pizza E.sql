

SELECT db_pizzaria_legal.tb_pizza.valor_pizza AS "Custo", db_pizzaria_legal.tb_categorias.Mista AS "Categoria"
FROM db_pizzaria_legal.tb_pizza
INNER JOIN db_pizzaria_legal.tb_categorias
ON db_pizzaria_legal.tb_pizza.idtb_pizza=tb_categorias_idtb_categorias
WHERE db_pizzaria_legal.tb_pizza.valor_pizza LIKE "50"
