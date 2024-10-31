-- Inserts para a tabela estudante
INSERT INTO estudante (nome, idade, cidade) VALUES
('João Silva', 20, 'São Paulo'),
('Maria Souza', 22, 'Rio de Janeiro'),
('Carlos Lima', 21, 'Belo Horizonte'),
('Ana Costa', 19, 'Curitiba'),
('Pedro Santos', 23, 'Salvador');

-- Inserts para a tabela curso
INSERT INTO curso (nome, descricao) VALUES
('Matemática', 'Curso de matemática avançada'),
('História', 'Curso de história do Brasil'),
('Programação', 'Curso de introdução à programação'),
('Química', 'Curso de química orgânica'),
('Física', 'Curso de física teórica');

-- Inserts para a tabela matricula
INSERT INTO matricula (FK_estudante_id, FK_curso_id, data_matricula) VALUES
(1, 1, '2024-01-10'), -- João Silva em Matemática
(2, 2, '2024-02-15'), -- Maria Souza em História
(3, 3, '2024-03-20'), -- Carlos Lima em Programação
(1, 3, '2024-04-05'), -- João Silva em Programação
(4, 4, '2024-05-01'), -- Ana Costa em Química
(5, 5, '2024-06-10'); -- Pedro Santos em Física
