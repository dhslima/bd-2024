# Liste os nomes de todos os alunos e seus respectivos cursos
SELECT a.nome AS nomealuno, c.nome AS nomecurso, a.email AS email 
FROM aluno a 
INNER JOIN curso c ON a.FK_curso_id = c.id;
# Liste os nomes de todos os professores e as disciplinas que eles ministram
SELECT p.nome AS nomeprof, d.nome AS nomedisc FROM
professor p INNER JOIN disciplina d ON
p.siape = d.FK_prof_siape ORDER BY p.nome;

# Liste todas as disciplinas do curso "Ciência da Computação"
SELECT d.nome AS nomedisciplina FROM disciplina d
INNER JOIN cursodisciplina cd ON d.id = cd.FK_disciplina_id
INNER JOIN curso c ON cd.FK_curso_id = c.id
WHERE c.nome = "Ciência da Computação";
# Quais as disciplinas que o aluno "João Silva" cursa
SELECT d.nome FROM disciplina d
INNER JOIN alunodisciplina ad ON d.id = ad.FK_disciplina_id
INNER JOIN aluno a ON a.mat = ad.FK_aluno_mat
WHERE a.nome = "João Silva";

# Liste os nomes de todos os alunos e a nota mais alta que eles 
# obtiveram em qualquer disciplina
SELECT a.nome, max(ad.nota) FROM aluno a
INNER JOIN alunodisciplina ad
ON a.mat = ad.FK_aluno_mat GROUP BY a.mat;

# Liste todas as disciplinas que têm alunos matriculados, mostrando o 
# nome da disciplina e a quantidade de alunos matriculados em cada uma
SELECT d.nome, COUNT(ad.FK_aluno_mat) AS total FROM disciplina d
INNER JOIN alunodisciplina ad
ON d.id = ad.FK_disciplina_id 
GROUP BY ad.FK_disciplina_id;

# DESAFIO!!
# Encontre os alunos matriculados nas disciplinas ministradas por um 
# professor cujo e-mail é "professor.a@exemplo.com"