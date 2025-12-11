-- Tabela Clientes 
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(20),
    cidade VARCHAR(25)
);

-- Inserindo dados na tabela Clientes
INSERT INTO clientes (id_cliente, nome, cidade) VALUES
(1, 'João', 'São Paulo'),
(2, 'Maria', 'Rio de Janeiro'),
(3, 'Pedro', 'Belo Horizonte');

-- Tabela Pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    valor DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Inserindo dados na tabela Pedidos
INSERT INTO pedidos (id_pedido, id_cliente, valor) VALUES
(1, 1, 100.50),
(2, 2, 200.00),
(3, 3, 150.75);

-- Tabela Pagamentos
CREATE TABLE IF NOT EXISTS pagamentos (
    id_pagamento INT PRIMARY KEY,
    id_pedido INT,
    status_pagamento VARCHAR(20),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

-- Inserindo dados na tabela Pagamentos
INSERT INTO pagamentos (id_pagamento, id_pedido, status_pagamento) VALUES
(1, 1, 'Pago'),
(2, 2, 'Pendente'),
(3, 3, 'Pago');
