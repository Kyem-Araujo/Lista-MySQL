SELECT db_generation_game_online.tb_personagem.ponto_labia AS "trapaceiros", db_generation_game_online.tb_classe.nome AS "Apelido"
FROM db_generation_game_online.tb_personagem
INNER JOIN db_generation_game_online.tb_classe
ON db_generation_game_online.tb_personagem.idtb_personagem = tb_classe.idtb_classe;