CREATE DATABASE filmes;
USE filmes;

CREATE TABLE ator(
	cod INT,
    nome VARCHAR(100),
    nasc DATE,
    nac VARCHAR(50),
    PRIMARY KEY(cod)
);

CREATE TABLE streaming(
	cod INT,
    nome VARCHAR(50),
    valor DOUBLE,
    PRIMARY KEY(cod)
);

CREATE TABLE categoria(
	cod INT,
    nome VARCHAR(50),
    PRIMARY KEY(cod)
);

CREATE TABLE filme(
	cod INT,
    ano INT,
    resumo VARCHAR(500),
    titulo VARCHAR(100),
    FK_categoria_cod INT,
    PRIMARY KEY(cod),
    FOREIGN KEY(FK_categoria_cod) REFERENCES categoria(cod)
);

CREATE TABLE idiomas(
	FK_filme_cod INT,
    idioma VARCHAR(50),
    PRIMARY KEY(FK_filme_cod, idioma),
    FOREIGN KEY(FK_filme_cod) REFERENCES filme(cod)
);

CREATE TABLE filmestreaming(
	FK_filme_cod INT,
    FK_streaming_cod INT,
    PRIMARY KEY(FK_filme_cod, FK_streaming_cod),
    FOREIGN KEY(FK_filme_cod) REFERENCES filme(cod),
    FOREIGN KEY(FK_streaming_cod) REFERENCES streaming(cod)
);

CREATE TABLE filmeator(
	FK_filme_cod INT,
    FK_ator_cod INT,
    PRIMARY KEY(FK_filme_cod, FK_ator_cod),
    FOREIGN KEY(FK_filme_cod) REFERENCES filme(cod),
    FOREIGN KEY(FK_ator_cod) REFERENCES ator(cod)
);