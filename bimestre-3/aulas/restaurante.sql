-- Tabela de Usuários (Clientes)
CREATE TABLE usuario (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(50)
);

-- Tabela de Restaurantes
CREATE TABLE restaurante (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50)
);

-- Tabela de Pratos
CREATE TABLE prato (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    FK_restaurante_id INT,
    FOREIGN KEY (FK_restaurante_id) REFERENCES restaurante(id)
);

-- Tabela de Pedidos
CREATE TABLE pedido (
    id INT PRIMARY KEY,
    FK_usuario_id INT,
    FK_restaurante_id INT,
    data_hora DATETIME,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (FK_usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (FK_restaurante_id) REFERENCES restaurante(id)
);

-- Tabela de Itens de Pedido
CREATE TABLE itempedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    FK_pedido_id INT,
    FK_prato_id INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (FK_pedido_id) REFERENCES pedido(id),
    FOREIGN KEY (FK_prato_id) REFERENCES prato(id)
);

-- Tabela de Cardápio
CREATE TABLE cardapio (
    id INT PRIMARY KEY,
    FK_restaurante_id INT,
    nome VARCHAR(100),
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (FK_restaurante_id) REFERENCES restaurante(id)
);
