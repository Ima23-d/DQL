SELECT Nome_Aluno, Idade, Nivel FROM Alunos;

SELECT A.Nome_Aluno, P.Nome_Plano, P.Valor
FROM Alunos A
JOIN Escolhe E ON A.ID_Aluno = E.ID_Aluno
JOIN Planos P ON E.ID_Planos = P.ID_Planos
WHERE A.ID_Aluno = 1;


SELECT A.Nome_Aluno, T.Especificacoes, I.Nome AS Instrutor
FROM Alunos A
JOIN Realiza R ON A.ID_Aluno = R.ID_Aluno
JOIN Treinos T ON R.ID_Treinos = T.ID_Treinos
JOIN Instrutores I ON T.ID_Instrutor = I.ID_Instrutor
WHERE A.ID_Aluno = 1;