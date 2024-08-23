CREATE DATABASE erros;

CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
    nasc DATE
);

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    FK_cliente_id VARCHAR(100),
    FK_empregado_id INT,
    total DOUBLE,
    FOREIGN KEY (FK_cliente_id) REFERENCES clientes(FK_cliente_id),
    FOREIGN KEY(FK_empregado_id) REFERENCES empregado(id)
);

CREATE TABLE empregados (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_contr DATE NOT NULL,
    salario DOUBLE NOT NULL
);

CREATE TABLE clientes(
	id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);