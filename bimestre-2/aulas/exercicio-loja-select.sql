# - Selecione todos os vendedores com comissão tipo B
SELECT * FROM vendedor WHERE faixa_comissao = "B";
# - Selecione todos os clientes de AL
SELECT * FROM cliente WHERE estado = "AL";
# - Selecione todos os pedidos que contenham o produto 4
SELECT * FROM itempedido WHERE FK_cod_produto = 4;
# - Selecione todos os pedidos com o prazo de
# entrega maior que 12 dias
SELECT * from pedido WHERE prazo_entrega > 12;
# - Selecione todos os produtos do pedido 3
SELECT * FROM itempedido WHERE FK_num_pedido = 3;
# - Apresente os vendedores em ordem crescente
# dos salarios
SELECT * FROM vendedor ORDER BY salario_fixo;