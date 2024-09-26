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

SELECT nome FROM disciplina WHERE id IN (1,3);
SELECT FK_disciplina_id FROM alunodisciplina WHERE FK_aluno_mat = 1;
SELECT mat FROM aluno WHERE nome = "João Silva";


# Liste os nomes de todos os alunos e a nota mais alta que eles obtiveram em qualquer disciplina

# Liste todas as disciplinas que têm alunos matriculados, mostrando o nome da disciplina e a quantidade de alunos matriculados em cada uma

# DESAFIO!!
# Encontra os alunos matriculados nas disciplinas ministradas por um professor cujo e-mail é "professor@exemplo.com"