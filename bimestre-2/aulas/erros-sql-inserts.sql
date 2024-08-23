INSERT INTO clientes(nome, email, nasc) VALUES ("C1", "c1@email.com", "20/05/1999");
INSERT INTO clientes(nome, email) VALUES ("C2", "c2@email.com")
INSERT INTO clientes(email, nasc) VALUES ("c3@email.com", NULL);
INSERT INTO clientes(nome, email, nasc) VALUES ("C4", "c1@email.com", "20/05/1999");

INSERT INTO pedidos(data_pedido, FK_cliente_id, FK_empregado_id, total)
VALUES("2024-08-23", 1, 1, 200);
INSERT INTO pedidos(data_pedido, FK_cliente_id, FK_empregado_id, total)
VALUES("2024-08-23", 2, 8, "200,43");

INSERT INTO empregados(nome, data_contr, salario) VALUES("E1", "2024-08-23", 2000);
INSERT INTO empregados(nome, data_contr, salario) VALUES("E2", "2024-08-18", 2000);
INSERT INTO empregados(id, nome, data_contr, salario) VALUES(2, "E3", "2024-08-20", 2000);