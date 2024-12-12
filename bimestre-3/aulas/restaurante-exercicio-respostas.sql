# Liste os nomes dos clientes que fizeram pedidos, o nome do 
# restaurante onde o pedido foi feito e o valor total do pedido.
SELECT u.nome AS cliente, r.nome AS restaurante, p.valor_total AS total
FROM usuario u INNER JOIN pedido p ON u.id = p.FK_usuario_id
INNER JOIN restaurante r ON r.id = p.FK_restaurante_id;

# Liste os nomes dos pratos e os restaurantes que os servem, junto com o preço de cada prato.

# Encontre todos os pedidos feitos em um determinado restaurante (por exemplo, "Restaurante A") e liste os nomes dos clientes e o valor total de cada pedido.

# Liste os pratos pedidos por cada cliente, a quantidade pedida e o nome do restaurante que serviu o prato.

# Liste todos os pratos que estão no cardápio de um determinado restaurante, juntamente com o nome do restaurante e o período de validade do cardápio.

# Encontre os clientes que já fizeram mais de 3 pedidos em qualquer restaurante. Liste o nome do cliente e a quantidade total de pedidos que ele fez.

# Liste os clientes que fizeram pedidos em mais de um restaurante, mostrando o nome do cliente e a quantidade de restaurantes diferentes em que ele fez pedidos.

# Liste os restaurantes e o número total de pratos que cada restaurante possui em seus cardápios.

# Liste os pratos que pertencem a restaurantes localizados em uma cidade específica (por exemplo, "São Paulo"), mostrando o nome do restaurante, o nome do prato e o preço.

# Liste os clientes que fizeram pedidos em restaurantes localizados em cidades diferentes da cidade onde moram, mostrando o nome do cliente, o nome do restaurante e a cidade do restaurante.

# DESAFIO
# Encontre os clientes que pediram o mesmo prato em diferentes restaurantes, listando o nome do cliente, o nome do prato e os restaurantes onde o prato foi pedido.