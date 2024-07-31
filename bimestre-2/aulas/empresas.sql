CREATE DATABASE empresas;
USE empresas;

CREATE TABLE area(
	cod INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE projeto(
	cod INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE empresa(
	cod INT PRIMARY KEY,
    nome VARCHAR(50),
    rua VARCHAR(50),
    cidade VARCHAR(50),
    uf VARCHAR(2)
);

CREATE TABLE setor(
	cod INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE telefones(
	FK_setor_cod INT,
    tel VARCHAR(11),
    PRIMARY KEY(FK_setor_cod, tel),
    FOREIGN KEY(FK_setor_cod) REFERENCES setor(cod)
);

CREATE TABLE funcionario(
	cod INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50),
    FK_setor_cod INT,
    cod_gerente INT, #FK_funcionario_cod // FK_gerente_cod //
    FOREIGN KEY(FK_setor_cod) REFERENCES setor(cod),
    FOREIGN KEY(cod_gerente) REFERENCES funcionario(cod)
);

CREATE TABLE areaprojeto(
	FK_area_cod INT,
    FK_projeto_cod INT,
    FOREIGN KEY(FK_area_cod) REFERENCES area(cod),
    FOREIGN KEY(FK_projeto_cod) REFERENCES projeto(cod),
    PRIMARY KEY(FK_area_cod, FK_projeto_cod)
);

CREATE TABLE projetoempresa(
	FK_projeto_cod INT,
    FK_empresa_cod INT,
    valor DOUBLE,
    FOREIGN KEY(FK_projeto_cod) REFERENCES projeto(cod),
    FOREIGN KEY(FK_empresa_cod) REFERENCES empresa(cod),
    PRIMARY KEY(FK_projeto_cod, FK_empresa_cod)
);

CREATE TABLE projetofuncionario(
	FK_projeto_cod INT,
    FK_funcionario_cod INT,
    FOREIGN KEY(FK_projeto_cod) REFERENCES projeto(cod),
    FOREIGN KEY(FK_funcionario_cod) REFERENCES funcionario(cod),
    PRIMARY KEY(FK_projeto_cod, FK_funcionario_cod)
);