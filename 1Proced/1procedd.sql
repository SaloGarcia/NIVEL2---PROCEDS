CREATE TABLE Produto (
  idProduto INTEGER   NOT NULL ,
  nome VARCHAR(255)    ,
  quantidade INTEGER    ,
  precoVenda NUMERIC(10, 2)      ,
PRIMARY KEY(idProduto));




CREATE TABLE Usuario (
  idUsuario INTEGER   NOT NULL ,
  nome VARCHAR(255)   NOT NULL ,
  senha VARCHAR(255)   NOT NULL   ,
PRIMARY KEY(idUsuario));




CREATE TABLE Pessoa (
  idPessoa INTEGER   NOT NULL ,
  nome VARCHAR(255)   NOT NULL ,
  logradouro VARCHAR(255)    ,
  cidade VARCHAR(255)    ,
  estado CHAR(2)    ,
  telefone VARCHAR(11)    ,
  email VARCHAR(255)    ,
  tipo CHAR(1)    ,
  cpf  VARCHAR(11)    ,
  cnpj VARCHAR(14)      ,
PRIMARY KEY(idPessoa));




CREATE TABLE Movimento  (
  idMovimento  INTEGER   NOT NULL ,
  Usuario_idUsuario INTEGER   NOT NULL ,
  Produto_idProduto INTEGER   NOT NULL ,
  Pessoa_idPessoa INTEGER   NOT NULL ,
  idUsuario INTEGER   NOT NULL ,
  idPessoa INTEGER    ,
  idProduto  INTEGER    ,
  quantidade INTEGER    ,
  valorUnitario NUMERIC(10, 2)    ,
  dataMovimento  DATE    ,
  tipoMovimento  CHAR(1)      ,
PRIMARY KEY(idMovimento )      ,
  FOREIGN KEY(Pessoa_idPessoa)
    REFERENCES Pessoa(idPessoa),
  FOREIGN KEY(Produto_idProduto)
    REFERENCES Produto(idProduto),
  FOREIGN KEY(Usuario_idUsuario)
    REFERENCES Usuario(idUsuario));


CREATE INDEX Movimento _FKIndex1 ON Movimento  (Pessoa_idPessoa);
CREATE INDEX Movimento _FKIndex2 ON Movimento  (Produto_idProduto);
CREATE INDEX Movimento _FKIndex3 ON Movimento  (Usuario_idUsuario);


CREATE INDEX IFK_Responsavel ON Movimento  (Pessoa_idPessoa);
CREATE INDEX IFK_ItemMovimentado ON Movimento  (Produto_idProduto);
CREATE INDEX IFK_ResponsavelPorMovimento ON Movimento  (Usuario_idUsuario);



