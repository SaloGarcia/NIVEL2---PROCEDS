USE LojaDB;
GO

-- Inserir Dados na Tabela Usuario
INSERT INTO Usuario (idUsuario, nome, senha) VALUES (1, 'op1', 'op1');
INSERT INTO Usuario (idUsuario, nome, senha) VALUES (2, 'op2', 'op2');
GO

-- Inserir Dados na Tabela Produto
INSERT INTO Produto (idProduto, nome, quantidade, precoVenda) VALUES (1, 'Banana', 100, 5.00);
INSERT INTO Produto (idProduto, nome, quantidade, precoVenda) VALUES (2, 'Laranja', 500, 2.00);
INSERT INTO Produto (idProduto, nome, quantidade, precoVenda) VALUES (3, 'Manga', 800, 4.00);
GO

-- Inserir Dados na Tabela Pessoa
INSERT INTO Pessoa (idPessoa, nome, logradouro, cidade, estado, telefone, email, tipo, cpf, cnpj)
VALUES (NEXT VALUE FOR Seq_Pessoa, 'Joao', 'Rua 12, casa 3, Quitanda', 'Riacho do Sul', 'PA', '1111-1111', 'joao@riacho.com', 'F', '11111111111', NULL);

INSERT INTO Pessoa (idPessoa, nome, logradouro, cidade, estado, telefone, email, tipo, cpf, cnpj)
VALUES (NEXT VALUE FOR Seq_Pessoa, 'JJC', 'Rua 11, Centro', 'Riacho do Norte', 'PA', '1212-1212', 'jjc@riacho.com', 'J', NULL, '22222222222222');
GO

-- Inserir Dados na Tabela Movimento
INSERT INTO Movimento (idMovimento, idUsuario, idPessoa, idProduto, quantidade, valorUnitario, dataMovimento, tipoMovimento)
VALUES (1, 1, 1, 1, 20, 4.00, GETDATE(), 'S');

INSERT INTO Movimento (idMovimento, idUsuario, idPessoa, idProduto, quantidade, valorUnitario, dataMovimento, tipoMovimento)
VALUES (2, 1, 1, 2, 15, 2.00, GETDATE(), 'S');

INSERT INTO Movimento (idMovimento, idUsuario, idPessoa, idProduto, quantidade, valorUnitario, dataMovimento, tipoMovimento)
VALUES (3, 2, 2, 3, 30, 5.00, GETDATE(), 'S');

INSERT INTO Movimento (idMovimento, idUsuario, idPessoa, idProduto, quantidade, valorUnitario, dataMovimento, tipoMovimento)
VALUES (4, 2, 2, 1, 25, 3.00, GETDATE(), 'E');
GO
