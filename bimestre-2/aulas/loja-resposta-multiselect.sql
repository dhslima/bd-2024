# Liste todos os vendedores que atenderam o Cliente 1

SELECT nome FROM vendedor WHERE cod_vendedor IN (
SELECT FK_cod_vendedor FROM pedido WHERE FK_cod_cliente = 1
);

# Liste todas os pedidos do Vendedor 1
SELECT num_pedido FROM pedido WHERE FK_cod_vendedor = (
SELECT cod_vendedor FROM vendedor WHERE nome = "Vendedor 1"
);

# Liste todos os pedidos do Cliente 3
SELECT num_pedido FROM pedido WHERE FK_cod_cliente = (
SELECT cod_cliente FROM cliente WHERE nome = "Cliente 3"
);

# Liste todos os clientes do Vendedor 3
SELECT nome FROM cliente WHERE cod_cliente IN (
SELECT FK_cod_cliente FROM pedido WHERE FK_cod_vendedor = (
SELECT cod_vendedor FROM vendedor WHERE nome = "Vendedor 3"
));

#Liste os vendedores cujo salário fixo é maior que a média dos salários fixos de todos os vendedores.
SELECT nome FROM vendedor WHERE salario_fixo > (
SELECT AVG(salario_fixo) FROM vendedor
);

# Encontre os nomes dos clientes que já fizeram pelo menos um pedido.
SELECT nome FROM cliente WHERE cod_cliente NOT IN (
SELECT DISTINCT FK_cod_cliente FROM pedido
);

# Encontre os produtos que foram pedidos mais de 3 vezes.

# Liste os vendedores que nunca realizaram um pedido.

# Liste os pedidos cujo valor total é maior que o valor médio de todos os pedidos.

# Encontre os clientes que não têm nenhum pedido associado.

# Liste os nomes dos vendedores que têm uma faixa de comissão igual à de algum outro vendedor.

# Liste os produtos cujo valor unitário é superior ao valor unitário médio de todos os produtos.

# Encontre os pedidos que têm um prazo de entrega maior do que a média de prazo de entrega de todos os pedidos.