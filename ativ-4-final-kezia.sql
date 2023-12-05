
--CRIAÇÃO TABELAS--

create table Cliente(
cod_cliente INT PRIMARY KEY,
nome_cliente VARCHAR(100),
nasc_cliente VARCHAR(13),
cpf_cliente VARCHAR(15),
tel_cliente VARCHAR(15),
email_cliente VARCHAR(150)
);

create table Regiao(
cod_regiao INT PRIMARY KEY,
nome_regiao VARCHAR(150),
clima_regiao VARCHAR(100)
);

create table Vendedor(
cod_vendedor INT PRIMARY KEY,
cod_regiao INT,
FOREIGN KEY(cod_regiao) REFERENCES Regiao(cod_regiao),
nome_vendedor VARCHAR(100),
nasc_vendedor VARCHAR(13),
cpf_vendedor VARCHAR(15),
tel_vendedor VARCHAR(15),
email_vendedor VARCHAR(150)
);

create table Veiculo(
cod_veiculo INT PRIMARY KEY,
placa VARCHAR(10),
cor_veiculo VARCHAR(30),
condicao_veiculo VARCHAR(50)
);

create table Distribuicao(
cod_vendedor INT PRIMARY KEY,
cod_veiculo INT,
FOREIGN KEY(cod_veiculo) REFERENCES Veiculo(cod_veiculo),
dat_distribuicao VARCHAR(13),
);

create table Produto(
cod_produto INT PRIMARY KEY,
produto VARCHAR(200),
estoque VARCHAR(100),
ano_vencimento VARCHAR(13),
marca VARCHAR(70)
);

create table Item(
cod_item INT PRIMARY KEY,
cod_produto INT,
FOREIGN KEY(cod_produto) REFERENCES Produto(cod_produto),
quantidade_itens VARCHAR(50)
);

create table Ponto_Estrategico(
cod_ponto INT PRIMARY KEY,
cod_regiao INT,
FOREIGN KEY(cod_regiao) REFERENCES Regiao(cod_regiao),
nome_regiao VARCHAR(100),
clima_regiao VARCHAR(70)
);

create table Nota_Fiscal(
cod_nf INT PRIMARY KEY,
cod_vendedor INT,
FOREIGN KEY(cod_vendedor) REFERENCES Vendedor(cod_vendedor),
cod_cliente INT,
FOREIGN KEY(cod_cliente) REFERENCES Cliente(cod_cliente),
cod_item INT,
FOREIGN KEY(cod_item) REFERENCES Item(cod_item)
);

--INSERTS--

INSERT INTO Cliente (cod_cliente, nome_cliente, nasc_cliente, cpf_cliente, tel_cliente, email_cliente)
VALUES 
  (1, 'Carlos Santos', '1980-03-10', '111.222.333-44', '(11) 5555-1111', 'carlos.santos@email.com'),
  (2, 'Ana Oliveira', '1992-07-25', '222.333.444-55', '(21) 9876-5432', 'ana.oliveira@email.com'),
  (3, 'Fernando Silva', '1975-12-18', '333.444.555-66', '(31) 3333-9999', 'fernando.silva@email.com'),
  (4, 'Camila Pereira', '1988-05-03', '444.555.666-77', '(41) 8765-4321', 'camila.pereira@email.com'),
  (5, 'Ricardo Martins', '1995-09-08', '555.666.777-88', '(51) 1111-5555', 'ricardo.martins@email.com'),
  (6, 'Laura Costa', '1982-04-14', '666.777.888-99', '(61) 9999-8888', 'laura.costa@email.com'),
  (7, 'Pedro Lima', '1990-01-20', '777.888.999-00', '(71) 4444-2222', 'pedro.lima@email.com'),
  (8, 'Mariana Souza', '1987-06-12', '888.999.000-11', '(81) 3333-7777', 'mariana.souza@email.com'),
  (9, 'Lucas Pereira', '1998-11-05', '999.000.111-22', '(91) 8888-4444', 'lucas.pereira@email.com'),
  (10, 'Isabel Santos', '1984-08-28', '000.111.222-33', '(01) 2222-9999', 'isabel.santos@email.com');

INSERT INTO Regiao (cod_regiao, nome_regiao, clima_regiao)
VALUES 
  (1, 'Sudeste', 'Tropical'),
  (2, 'Nordeste', 'Semiárido'),
  (3, 'Sul', 'Temperado'),
  (4, 'Norte', 'Equatorial'),
  (5, 'Centro-Oeste', 'Tropical'),
  (6, 'Noroeste', 'Desértico'),
  (7, 'Atlântida', 'Oceânico'),
  (8, 'Montanhas Roxas', 'Alpino'),
  (9, 'Planície Dourada', 'Árido'),
  (10, 'Vale das Flores', 'Mediterrâneo');

INSERT INTO Vendedor (cod_vendedor, cod_regiao, nome_vendedor, nasc_vendedor, cpf_vendedor, tel_vendedor, email_vendedor)
VALUES 
  (1, 1, 'Lucia Oliveira', '1985-02-20', '111.222.333-44', '(11) 5555-1111', 'lucia.oliveira@email.com'),
  (2, 2, 'Ricardo Santos', '1990-07-15', '222.333.444-55', '(21) 9876-5432', 'ricardo.santos@email.com'),
  (3, 3, 'Gabriela Silva', '1982-11-10', '333.444.555-66', '(31) 3333-9999', 'gabriela.silva@email.com'),
  (4, 4, 'Fernando Lima', '1995-05-03', '444.555.666-77', '(41) 8765-4321', 'fernando.lima@email.com'),
  (5, 5, 'Mariana Pereira', '1988-09-08', '555.666.777-88', '(51) 1111-5555', 'mariana.pereira@email.com'),
  (6, 6, 'Eduardo Costa', '1980-04-14', '666.777.888-99', '(61) 9999-8888', 'eduardo.costa@email.com'),
  (7, 7, 'Ana Souza', '1990-01-20', '777.888.999-00', '(71) 4444-2222', 'ana.souza@email.com'),
  (8, 8, 'Carlos Pereira', '1987-06-12', '888.999.000-11', '(81) 3333-7777', 'carlos.pereira@email.com'),
  (9, 9, 'Isabel Lima', '1998-11-05', '999.000.111-22', '(91) 8888-4444', 'isabel.lima@email.com'),
  (10, 10, 'Ricardo Santos', '1984-08-28', '000.111.222-33', '(01) 2222-9999', 'ricardo.santos@email.com');

INSERT INTO Veiculo (cod_veiculo, placa, cor_veiculo, condicao_veiculo)
VALUES 
  (1, 'ABC1234', 'Azul', 'Novo'),
  (2, 'XYZ5678', 'Preto', 'Usado'),
  (3, 'DEF9876', 'Vermelho', 'Seminovo'),
  (4, 'MNO4321', 'Branco', 'Usado'),
  (5, 'GHI6543', 'Verde', 'Seminovo'),
  (6, 'JKL8765', 'Prata', 'Novo'),
  (7, 'XYZ9999', 'Amarelo', 'Novo'),
  (8, 'ABC7777', 'Rosa', 'Seminovo'),
  (9, 'MNO1111', 'Cinza', 'Usado'),
  (10, 'DEF3333', 'Laranja', 'Novo');

INSERT INTO Distribuicao (cod_vendedor, cod_veiculo, dat_distribuicao)
VALUES 
  (1, 1, '2023-01-15'),
  (2, 2, '2023-02-20'),
  (3, 3, '2023-03-25'),
  (4, 4, '2023-04-10'),
  (5, 5, '2023-05-15'),
  (6, 6, '2023-06-20'),
  (7, 7, '2023-07-25'),
  (8, 8, '2023-08-10'),
  (9, 9, '2023-09-15'),
  (10, 10, '2023-10-20');

INSERT INTO Produto (cod_produto, produto, estoque, ano_vencimento, marca)
VALUES 
  (1, 'Shampoo Hidratante', '100 unidades', '2024-12-01', 'Beleza Luxuosa'),
  (2, 'Condicionador Reparador', '50 unidades', '2024-10-15', 'Cabelo Fino'),
  (3, 'Máscara Capilar Nutritiva', '75 unidades', '2023-09-30', 'Beleza Luxuosa'),
  (4, 'Óleo de Argan para Cabelo', '30 unidades', '2024-08-01', 'Cabelo Fino'),
  (5, 'Esfoliante Facial Suave', '60 unidades', '2024-11-30', 'Pele Radiante'),
  (6, 'Creme Hidratante Corporal', '25 unidades', '2023-12-15', 'Pele Radiante'),
  (7, 'Perfume Floral Elegante', '40 unidades', '2024-07-01', 'Aroma Sofisticado'),
  (8, 'Creme Anti-idade Noturno', '15 unidades', '2024-05-20', 'Juventude Eterna'),
  (9, 'Batom de Longa Duração', '50 unidades', '2023-08-10', 'Beleza Luxuosa'),
  (10, 'Máscara de Cílios Volumizadora', '20 unidades', '2024-06-30', 'Olhar Poderoso');

INSERT INTO Item (cod_item, cod_produto, quantidade_itens)
VALUES 
  (1, 1, '20 unidades'),
  (2, 2, '15 unidades'),
  (3, 3, '30 unidades'),
  (4, 4, '10 unidades'),
  (5, 5, '25 unidades'),
  (6, 6, '18 unidades'),
  (7, 7, '22 unidades'),
  (8, 8, '8 unidades'),
  (9, 9, '12 unidades'),
  (10, 10, '14 unidades');

INSERT INTO Ponto_Estrategico (cod_ponto, cod_regiao, nome_regiao, clima_regiao)
VALUES 
  (1, 1, 'Metrópole Central', 'Clima Tropical'),
  (2, 2, 'Litoral Sul', 'Clima Tropical'),
  (3, 3, 'Planalto Norte', 'Clima Temperado'),
  (4, 4, 'Amazônia Central', 'Clima Equatorial'),
  (5, 5, 'Cerrado Ocidental', 'Clima Tropical'),
  (6, 6, 'Sertão Nordestino', 'Clima Semiárido'),
  (7, 7, 'Montanhas Azuis', 'Clima Temperado'),
  (8, 8, 'Vale Encantado', 'Clima Tropical'),
  (9, 9, 'Ilhas Douradas', 'Clima Tropical'),
  (10, 10, 'Deserto Vermelho', 'Clima Árido');

INSERT INTO Nota_Fiscal (cod_nf, cod_vendedor, cod_cliente, cod_item)
VALUES 
  (1, 1, 1, 1),
  (2, 2, 2, 2),
  (3, 3, 3, 3),
  (4, 4, 4, 4),
  (5, 5, 5, 5),
  (6, 6, 6, 6),
  (7, 7, 7, 7),
  (8, 8, 8, 8),
  (9, 9, 9, 9),
  (10, 10, 10, 10);

--CONSULTAS--

--Listar todos os pontos estratégicos de cada região--
SELECT r.nome_regiao, pe.nome_regiao AS ponto_estrategico
FROM Regiao r
JOIN Ponto_Estrategico pe ON r.cod_regiao = pe.cod_regiao;

--Listar os nomes das regiões cadastradas--
SELECT nome_regiao
FROM Regiao;

--Listar todos os vendedores e quais veículos que eles utilizaram no último mês--
SELECT v.nome_vendedor, ve.placa
FROM Vendedor v
JOIN Distribuicao d ON v.cod_vendedor = d.cod_vendedor
JOIN Veiculo ve ON d.cod_veiculo = ve.cod_veiculo
WHERE MONTH(d.dat_distribuicao) = MONTH(GETDATE()) - 1;

--Listar todos os vendedores responsáveis por cada região--
SELECT r.nome_regiao, v.nome_vendedor
FROM Regiao r
JOIN Vendedor v ON r.cod_regiao = v.cod_regiao;

--Todos os produtos vendidos por um determinado vendedor--
SELECT v.nome_vendedor, p.produto
FROM Vendedor v
JOIN Nota_Fiscal nf ON v.cod_vendedor = nf.cod_vendedor
JOIN Item i ON nf.cod_item = i.cod_item
JOIN Produto p ON i.cod_produto = p.cod_produto;

--Todos os vendedores que venderam um determinado produto--
SELECT v.nome_vendedor, p.produto
FROM Vendedor v
JOIN Nota_Fiscal nf ON v.cod_vendedor = nf.cod_vendedor
JOIN Item i ON nf.cod_item = i.cod_item
JOIN Produto p ON i.cod_produto = p.cod_produto
WHERE p.produto = 'Nome do Produto';

--Todos os produtos que ainda não foram vendidos--
SELECT *
FROM Produto p
LEFT JOIN Item i ON p.cod_produto = i.cod_produto
WHERE i.cod_produto IS NULL;

--Listar o histórico de utilização de um determinado veículo--
SELECT v.placa, d.dat_distribuicao
FROM Veiculo v
JOIN Distribuicao d ON v.cod_veiculo = d.cod_veiculo;

--A quantidade de itens de cada nota fiscal--
SELECT nf.cod_nf, COUNT(i.cod_item) AS quantidade_itens
FROM Nota_Fiscal nf
JOIN Item i ON nf.cod_item = i.cod_item
GROUP BY nf.cod_nf;