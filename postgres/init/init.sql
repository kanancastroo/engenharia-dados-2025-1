-- Criação das tabelas


CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    telefone VARCHAR(20),
    endereco VARCHAR(150),
    cep VARCHAR(10),
    data_nascimento DATE,
    email VARCHAR(100),
    data_cadastro TIMESTAMP
);

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    preco NUMERIC(10, 2),
    mercado VARCHAR(100)
);

CREATE TABLE compras (
    id SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id),
    id_produto INT REFERENCES produtos(id),
    data_compra DATE,
    quantidade INT,
    valor_final NUMERIC(10, 2)
);


-- Inserção de dados fictícios

INSERT INTO clientes (nome, cpf, telefone, endereco, cep, data_nascimento, email, data_cadastro) VALUES
('Ana Souza', '12345678901', '(11) 91234-5678', 'Rua das Flores, 123', '01234-000', '1990-05-14', 'ana.souza@email.com', '2025-06-01 10:30:00'),
('Bruno Lima', '23456789012', '(21) 99876-5432', 'Av. Brasil, 456', '04567-890', '1985-03-22', 'bruno.lima@email.com', '2025-06-01 11:00:00'),
('Carlos Mendes', '34567890123', '(31) 98765-4321', 'Rua A, 789', '07890-123', '1992-07-10', 'carlos.m@email.com', '2025-06-02 09:45:00'),
('Daniela Rocha', '45678901234', '(41) 97654-3210', 'Rua B, 321', '06543-210', '1988-11-30', 'daniela.rocha@email.com', '2025-06-02 14:20:00'),
('Eduardo Silva', '56789012345', '(51) 96543-2109', 'Av. Central, 101', '01234-567', '1995-01-15', 'eduardo.s@email.com', '2025-06-03 13:00:00'),
('Fernanda Torres', '67890123456', '(61) 95432-1098', 'Rua C, 202', '04321-765', '1991-09-08', 'fernanda.t@email.com', '2025-06-03 10:30:00'),
('Gabriel Costa', '78901234567', '(71) 94321-0987', 'Av. Norte, 303', '05678-123', '1987-04-20', 'gabriel.c@email.com', '2025-06-03 08:45:00'),
('Helena Dias', '89012345678', '(81) 93210-9876', 'Rua D, 404', '07865-432', '1993-06-25', 'helena.d@email.com', '2025-06-04 12:15:00'),
('Igor Martins', '90123456789', '(91) 92109-8765', 'Rua E, 505', '06789-321', '1990-08-18', 'igor.m@email.com', '2025-06-04 15:30:00'),
('Juliana Castro', '01234567890', '(31) 91098-7654', 'Av. Oeste, 606', '05678-234', '1996-12-01', 'juliana.c@email.com', '2025-06-05 11:45:00'),
('Lucas Pires', '11122233344', '(11) 90000-1111', 'Rua F, 707', '01234-888', '1994-10-09', 'lucas.p@email.com', '2025-06-05 12:00:00'),
('Mariana Lopes', '22233344455', '(21) 98888-2222', 'Rua G, 808', '05432-999', '1989-03-03', 'mariana.l@email.com', '2025-06-05 13:10:00'),
('Nicolas Alves', '33344455566', '(31) 97777-3333', 'Av. Leste, 909', '06666-000', '1997-02-17', 'nicolas.a@email.com', '2025-06-05 14:00:00'),
('Olivia Barros', '44455566677', '(41) 96666-4444', 'Rua H, 1001', '07777-111', '1992-06-06', 'olivia.b@email.com', '2025-06-05 15:30:00'),
('Pedro Henrique', '55566677788', '(51) 95555-5555', 'Rua I, 1102', '08888-222', '1986-05-27', 'pedro.h@email.com', '2025-06-05 16:00:00');


INSERT INTO produtos (nome, preco, mercado) VALUES
('Arroz 5kg', 25.90, 'Supermercado Central'),
('Feijão 1kg', 8.50, 'Supermercado Central'),
('Macarrão 500g', 4.99, 'Supermercado Central'),
('Óleo de Soja 900ml', 7.49, 'Mercado Bom Preço'),
('Açúcar 1kg', 5.10, 'Mercado Bom Preço'),
('Café 500g', 12.75, 'Mercado Bom Preço'),
('Leite 1L', 4.80, 'Supermercado Central'),
('Pão de Forma', 6.25, 'Padaria do Bairro'),
('Presunto 200g', 6.90, 'Mercado Bom Preço'),
('Queijo Mussarela 200g', 9.50, 'Mercado Bom Preço'),
('Manteiga 200g', 8.40, 'Supermercado Central'),
('Refrigerante 2L', 9.99, 'Supermercado Central'),
('Água Mineral 1.5L', 2.50, 'Supermercado Central'),
('Detergente 500ml', 2.30, 'Loja Econômica'),
('Sabão em Pó 1kg', 11.90, 'Loja Econômica'),
('Desinfetante 1L', 5.60, 'Loja Econômica'),
('Shampoo 350ml', 14.25, 'Farmácia Popular'),
('Creme Dental 90g', 3.85, 'Farmácia Popular'),
('Papel Higiênico (4un)', 10.50, 'Supermercado Central'),
('Fralda Infantil (P)', 39.90, 'Farmácia Popular');


INSERT INTO compras (id_cliente, id_produto, data_compra, quantidade, valor_final) VALUES
(1, 1, '2025-06-01', 2, 51.80),
(2, 4, '2025-06-01', 1, 7.49),
(3, 6, '2025-06-02', 2, 25.50),
(4, 3, '2025-06-02', 4, 19.96),
(5, 8, '2025-06-03', 1, 6.25),
(6, 10, '2025-06-03', 3, 28.50),
(7, 11, '2025-06-04', 1, 8.40),
(8, 13, '2025-06-04', 6, 15.00),
(9, 15, '2025-06-05', 1, 11.90),
(10, 18, '2025-06-05', 2, 7.70);

CREATE TABLE _init_marcador (id INT);
