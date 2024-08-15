# GROUP BY
# Quantos clientes de cada cidade a loja tem?
SELECT cidade, COUNT(*) AS qntd FROM cliente GROUP BY cidade;
# Quantos itens tem cada pedido?
SELECT FK_num_pedido AS NumPedido, COUNT(*) AS Qntd FROM itempedido
GROUP BY FK_num_pedido;
# Quantos pedidos cada vendedor fez?
SELECT FK_cod_vendedor AS Vendedor, COUNT(*) AS Qntd FROM pedido
GROUP BY FK_cod_vendedor;
# Qual a soma de produtos e a média de produtos em cada pedido?
SELECT FK_num_pedido AS NumPedido, SUM(quantidade) AS SOMA,
AVG(quantidade) AS Media FROM itempedido GROUP BY FK_num_pedido;
# Qual o maior, menor e médio prazo de entrega de cada vendedor?
SELECT MAX(prazo_entrega), MIN(prazo_entrega), AVG(prazo_entrega)
FROM pedido GROUP BY FK_cod_vendedor;
# Quantos pedidos cada item está incluido?
SELECT FK_cod_produto AS Produto, COUNT(*) AS Qntd FROM itempedido
GROUP BY FK_cod_produto; 
# Top 3 dos produtos mais vendidos (COMANDO NOVO)
SELECT FK_cod_produto AS Produto, SUM(quantidade) AS Qntd 
FROM itempedido GROUP BY FK_cod_produto ORDER BY Qntd DESC LIMIT 3