-- -------------------
-- Ver Treino do Aluno
-- -------------------
SELECT treinos.id_treinos, treinos.especificacoes, instrutores.nome
        FROM treinos
        JOIN instrutores ON treinos.id_instrutor = instrutores.id_instrutor
        JOIN treinos_alunos ON treinos.id_treinos = treinos_alunos.id_treinos
        WHERE treinos_alunos.id_aluno = %s
  
-- -- --------------------
-- Cadastrar Treino(buscar)
-- ------------------------
SELECT id_aluno FROM alunos WHERE nome_aluno ILIKE %s

-- -- ----------------------
-- Ver Treino Aluno Personal
-- -------------------------
 SELECT 
        treinos.id_treinos, 
        treinos.especificacoes, 
        instrutores.nome AS nome_instrutor
    FROM treinos
    JOIN instrutores ON treinos.id_instrutor = instrutores.id_instrutor
    JOIN treinos_alunos ON treinos.id_treinos = treinos_alunos.id_treinos
    WHERE treinos_alunos.id_aluno = %s
