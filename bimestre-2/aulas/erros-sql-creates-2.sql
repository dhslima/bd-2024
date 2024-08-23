CREATE DATABASE loja-erros;
USE loja-erros;

CREATE TABLE cliente(
	cod_cliente DOUBLE AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(),
    cep INT,
    estado VARCHAR(2),
    PRIMARY KEY(cod_cliente)
);

CREATE TABLE vendedor(
	cod_vendedor AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    salario_fixo INT,
    faixa_comissao VARCHAR(1),
    PRIMARY KEY(cod_vendedor)
);

CREATE TABLE produto(
	cod_produto INT AUTO_INCREMENT,
    descricao VARCHAR(200),
    nome VARCHAR(50),
    valor_unitario VARCHAR(20),
    PRIMARY KEY(cod_produto)
);

CREATE TABLE pedido(
	num_pedido INT AUTO_INCREMENT,
    prazo_entrega INT NOT NULL,
    FK_cod_cliente INT,
    FK_cod_vendedor INT,
    PRIMARY KEY(num_pedido),
    FOREIGN KEY(cod_cliente) REFERENCES clientes(cod_cliente),
    FOREIGN KEY(cod_vendedor) REFERENCES vendedores(cod_vendedor)
);

CREATE TABLE itempedido(
	FK_num_pedido INT,
    FK_cod_produto INT,
    quantidade INT,
    PRIMARY KEY(FK_num_pedido, FK_cod_produto),
    FOREIGN KEY(FK_num_pedido) REFERENCES pedido(num_pedido),
    FOREIGN KEY(FK_cod_produto) REFERENCES produto(cod_produto)
);

