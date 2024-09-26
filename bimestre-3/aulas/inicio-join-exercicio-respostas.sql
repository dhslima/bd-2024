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

SELECT nome FROM disciplina WHERE id = 1;
SELECT FK_disciplina_id FROM cursodisciplina WHERE FK_curso_id = 1;
SELECT id FROM curso WHERE nome = "Ciência da Computação";

# Liste os nomes de todos os alunos e a nota mais alta que eles obtiveram em qualquer disciplina

# Liste todas as disciplinas que têm alunos matriculados, mostrando o nome da disciplina e a quantidade de alunos matriculados em cada uma

# DESAFIO!!
# Encontra os alunos matriculados nas disciplinas ministradas por um professor cujo e-mail é "professor@exemplo.com"