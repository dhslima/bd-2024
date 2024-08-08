INSERT INTO cliente(nome, cidade, cep, estado) VALUES
("Cliente 5", "Maceió", "57035000", "AL");
INSERT INTO cliente(nome, cidade, cep, estado) VALUES
("Cliente 6", "Maceió", "57035000", "AL");
INSERT INTO cliente(nome, cidade, cep, estado) VALUES
("Cliente 7", "Recife", "57035000", "PE");
INSERT INTO cliente(nome, cidade, cep, estado) VALUES
("Cliente 8", "João Pessoa", "57035000", "PB");

INSERT INTO pedido(prazo_entrega, FK_cod_cliente, FK_cod_vendedor) VALUES
(5, 1, 4);
INSERT INTO pedido(prazo_entrega, FK_cod_cliente, FK_cod_vendedor) VALUES
(12, 5, 2);
INSERT INTO pedido(prazo_entrega, FK_cod_cliente, FK_cod_vendedor) VALUES
(10, 6, 1);
INSERT INTO pedido(prazo_entrega, FK_cod_cliente, FK_cod_vendedor) VALUES
(2, 4, 3);
INSERT INTO pedido(prazo_entrega, FK_cod_cliente, FK_cod_vendedor) VALUES
(8, 7, 1);
INSERT INTO pedido(prazo_entrega, FK_cod_cliente, FK_cod_vendedor) VALUES
(12, 8, 2);
INSERT INTO pedido(prazo_entrega, FK_cod_cliente, FK_cod_vendedor) VALUES
(10, 8, 2);
INSERT INTO pedido(prazo_entrega, FK_cod_cliente, FK_cod_vendedor) VALUES
(7, 2, 4);

INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(5,1,2);
INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(5,2,1);

INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(6,2,1);
INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(6,3,1);
INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(6,4,2);

INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(7,2,10);

INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(8,4,2);

INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(9,1,1);
INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(9,2,1);
INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(9,4,2);

INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(10,1,2);

INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(11,1,3);
INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(11,3,2);

INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(12,1,2);
INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(12,3,5);
INSERT INTO itempedido(FK_num_pedido, FK_cod_produto, quantidade) VALUES
(12,4,10);
