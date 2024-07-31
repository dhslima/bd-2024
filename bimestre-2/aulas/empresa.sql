CREATE DATABASE empresa;
USE empresa;

CREATE TABLE cliente(
	email VARCHAR(100),
    nome VARCHAR(100),
    PRIMARY KEY(email)
);

CREATE TABLE servico(
	cod INT,
    nome VARCHAR(100),
    PRIMARY KEY(cod)
);

CREATE TABLE profissional(
	cod INT,
    nome VARCHAR(100),
    tel VARCHAR(11),
    PRIMARY KEY(cod)
);

CREATE TABLE clienteservico(
	FK_cliente_email VARCHAR(100),
    FK_servico_cod INT,
    PRIMARY KEY(FK_cliente_email, FK_servico_cod),
    FOREIGN KEY(FK_cliente_email) REFERENCES cliente(email),
    FOREIGN KEY(FK_servico_cod) REFERENCES servico(cod)
);

CREATE TABLE servicoprofissional(
	FK_servico_cod INT,
    FK_profissional_cod INT,
    PRIMARY KEY(FK_servico_cod, FK_profissional_cod),
    FOREIGN KEY(FK_servico_cod) REFERENCES servico(cod),
    FOREIGN KEY(FK_profissional_cod) REFERENCES profissional(cod)
);