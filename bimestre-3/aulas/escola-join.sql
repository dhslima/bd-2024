-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS escola;
USE escola;

-- Tabela de Estudantes
CREATE TABLE estudante (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    cidade VARCHAR(50)
);

-- Tabela de Cursos
CREATE TABLE curso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Tabela de Matrículas
CREATE TABLE matricula (
    id INT PRIMARY KEY AUTO_INCREMENT,
    FK_estudante_id INT,
    FK_curso_id INT,
    data_matricula DATE,
    FOREIGN KEY (FK_estudante_id) REFERENCES estudante(id),
    FOREIGN KEY (FK_curso_id) REFERENCES curso(id)
);
