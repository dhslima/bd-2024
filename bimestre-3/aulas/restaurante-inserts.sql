-- Ajuste na tabela usuario para incluir a cidade
-- Atualize a tabela usuario se ainda não tiver a coluna cidade
-- ALTER TABLE usuario ADD cidade VARCHAR(50);

-- Inserts para a tabela usuario (Clientes) com a cidade adicionada
INSERT INTO usuario (id, nome, email, cidade) VALUES
(1, 'João Silva', 'joao.silva@example.com', 'São Paulo'),
(2, 'Maria Souza', 'maria.souza@example.com', 'Rio de Janeiro'),
(3, 'Carlos Lima', 'carlos.lima@example.com', 'Curitiba'),
(4, 'Ana Costa', 'ana.costa@example.com', 'Belo Horizonte');

-- Inserts para a tabela restaurante (Restaurantes), incluindo um restaurante sem pratos no cardápio
INSERT INTO restaurante (id, nome, cidade, classificacao) VALUES
(1, 'Restaurante A', 'São Paulo', 4.5),
(2, 'Restaurante B', 'São Paulo', 4.2),
(3, 'Restaurante C', 'Rio de Janeiro', 3.8),
(4, 'Restaurante D', 'Belo Horizonte', 4.7),
(5, 'Restaurante E', 'Curitiba', 3.5); -- Novo restaurante sem pratos no cardápio

-- Inserts para a tabela prato (Pratos), incluindo pratos que nunca foram pedidos
INSERT INTO prato (id, nome, preco, FK_restaurante_id) VALUES
(1, 'Prato 1', 25.00, 1),
(2, 'Prato 2', 30.00, 1),
(3, 'Prato 3', 20.00, 2),
(4, 'Prato 4', 35.00, 3),
(5, 'Prato 5', 50.00, 4),
(6, 'Prato 6', 40.00, 4),
(7, 'Prato 7', 45.00, 2), -- Novo prato que nunca foi pedido
(8, 'Prato 8', 55.00, 4), -- Novos pratos para Restaurante D
(9, 'Prato 9', 60.00, 4),
(10, 'Prato 10', 65.00, 4),
(11, 'Prato 11', 70.00, 4);

-- Inserts para a tabela pedido (Pedidos), adicionando mais pedidos para atender às questões
INSERT INTO pedido (id, FK_usuario_id, FK_restaurante_id, data_hora, valor_total) VALUES
(1, 1, 1, '2024-10-01 12:30:00', 55.00),
(2, 1, 2, '2024-10-02 13:00:00', 100.00),
(3, 2, 2, '2024-10-01 14:00:00', 80.00),
(4, 3, 3, '2024-10-03 18:00:00', 35.00),
(5, 2, 4, '2024-10-02 19:30:00', 120.00),
(6, 1, 4, '2024-10-03 20:00:00', 90.00),
(7, 4, 1, '2024-10-03 21:00:00', 200.00),
(8, 1, 2, '2024-10-04 12:00:00', 60.00),  -- Novo pedido de João Silva para ter mais de 3 pedidos
(9, 2, 4, '2024-10-05 19:30:00', 130.00), -- Novos pedidos de Maria Souza com valor acima de R$100
(10, 2, 1, '2024-10-06 20:00:00', 150.00),
(11, 2, 2, '2024-10-07 18:00:00', 110.00);

-- Inserts para a tabela itempedido (Itens de Pedido), incluindo itens para os novos pedidos
INSERT INTO itempedido (id, FK_pedido_id, FK_prato_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 1, 25.00), -- João Silva, Pedido no Restaurante A
(2, 1, 2, 1, 30.00), -- João Silva, Pedido no Restaurante A
(3, 2, 3, 2, 50.00), -- João Silva, Pedido no Restaurante B
(4, 3, 3, 1, 20.00), -- Maria Souza, Pedido no Restaurante B
(5, 4, 4, 1, 35.00), -- Carlos Lima, Pedido no Restaurante C
(6, 5, 5, 1, 50.00), -- Maria Souza, Pedido no Restaurante D
(7, 6, 6, 1, 40.00), -- João Silva, Pedido no Restaurante D
(8, 7, 1, 4, 50.00), -- Ana Costa, Pedido no Restaurante A
(9, 8, 3, 1, 20.00), -- João Silva, Novo pedido no Restaurante B
(10, 9, 5, 2, 50.00), -- Maria Souza, Novo pedido no Restaurante D
(11, 10, 2, 3, 30.00), -- Maria Souza, Novo pedido no Restaurante A
(12, 11, 3, 1, 20.00); -- Maria Souza, Novo pedido no Restaurante B

-- Inserts para a tabela cardapio (Cardápios), mantendo os cardápios existentes
INSERT INTO cardapio (id, FK_restaurante_id, nome, data_inicio, data_fim) VALUES
(1, 1, 'Cardápio Almoço', '2024-01-01', '2024-12-31'),
(2, 2, 'Cardápio Jantar', '2024-01-01', '2024-12-31'),
(3, 3, 'Cardápio Geral', '2024-01-01', '2024-12-31'),
(4, 4, 'Cardápio Executivo', '2024-01-01', '2024-12-31');

-- Inserts para a tabela cardapio_prato (Relacionamento entre Cardápios e Pratos), adicionando mais pratos ao Restaurante D
INSERT INTO cardapio_prato (FK_cardapio_id, FK_prato_id) VALUES
(1, 1), -- Cardápio Almoço, Prato 1
(1, 2), -- Cardápio Almoço, Prato 2
(2, 3), -- Cardápio Jantar, Prato 3
(2, 7), -- Cardápio Jantar, Prato 7 (prato nunca pedido)
(3, 4), -- Cardápio Geral, Prato 4
-- Restaurante E (id 5) não terá pratos em seu cardápio para atender à Questão 9
(4, 5), -- Cardápio Executivo, Prato 5
(4, 6), -- Cardápio Executivo, Prato 6
(4, 8), -- Cardápio Executivo, Prato 8
(4, 9), -- Cardápio Executivo, Prato 9
(4, 10), -- Cardápio Executivo, Prato 10
(4, 11); -- Cardápio Executivo, Prato 11 (Restaurante D agora tem mais de 5 pratos)

