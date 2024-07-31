CREATE DATABASE mercado;
USE mercado;

CREATE TABLE cliente(
	cpf VARCHAR(11),
    nome VARCHAR(50),
    tel VARCHAR(11),
    PRIMARY KEY(cpf)
);

CREATE TABLE categoria(
	cod INT,
    nome VARCHAR(50),
    PRIMARY KEY(cod)
);

CREATE TABLE pedido(
	cod INT,
    data DATE,
    FK_cliente_cpf VARCHAR(11),
    PRIMARY KEY(cod),
    FOREIGN KEY(FK_cliente_cpf) REFERENCES cliente(cpf)
);

CREATE TABLE item(
	cod INT,
    nome VARCHAR(50),
    valor DOUBLE,
    FK_categoria_cod INT,
    PRIMARY KEY(cod),
    FOREIGN KEY(FK_categoria_cod) REFERENCES categoria(cod)
);

CREATE TABLE pedidoitem(
	FK_pedido_cod INT,
    FK_item_cod INT,
    PRIMARY KEY(FK_pedido_cod, FK_item_cod),
    FOREIGN KEY(FK_pedido_cod) REFERENCES pedido(cod),
    FOREIGN KEY(FK_item_cod) REFERENCES item(cod)
);