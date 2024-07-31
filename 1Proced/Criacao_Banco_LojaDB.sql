-- Criar o banco de dados LojaDB
CREATE DATABASE LojaDB;
GO

-- Usar o banco de dados LojaDB
USE LojaDB;
GO

-- Criar a tabela Pessoa
CREATE TABLE Pessoa (
    idPessoa INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(255) NOT NULL,
    logradouro VARCHAR(255),
    cidade VARCHAR(255),
    estado CHAR(2),
    telefone VARCHAR(11),
    email VARCHAR(255),
    tipo CHAR(1) CHECK (tipo IN ('F', 'J')),
    cpf VARCHAR(11),
    cnpj VARCHAR(14),
    CONSTRAINT CHK_Pessoa_Tipo CHECK ((tipo = 'F' AND cpf IS NOT NULL AND cnpj IS NULL) OR (tipo = 'J' AND cpf IS NULL AND cnpj IS NOT NULL))
);
GO

-- Criar a tabela Produto
CREATE TABLE Produto (
    idProduto INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    precoVenda DECIMAL(10, 2)
);
GO

-- Criar a tabela Usuario
CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);
GO

-- Criar a tabela Movimento
CREATE TABLE Movimento (
    idMovimento INT PRIMARY KEY IDENTITY(1,1),
    idUsuario INT,
    idPessoa INT,
    idProduto INT,
    quantidade INT,
    valorUnitario DECIMAL(10, 2),
    dataMovimento DATE,
    tipoMovimento CHAR(1) CHECK (tipoMovimento IN ('C', 'V')),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);
GO
-- Criar uma sequence para geração de identificadores de pessoa
CREATE SEQUENCE seq_idPessoa
    START WITH 1
    INCREMENT BY 1;
GO

-- Modificar a tabela Pessoa para usar a sequence
ALTER TABLE Pessoa
    ALTER COLUMN idPessoa ADD DEFAULT NEXT VALUE FOR seq_idPessoa;
GO
