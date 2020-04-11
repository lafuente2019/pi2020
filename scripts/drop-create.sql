create database pi2020 
default character set utf8
default collate utf8_general_ci;

CREATE TABLE cadastroFuncionario (
	idCliente int NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(255) NOT NULL,
    rg VARCHAR(255),
	sexo VARCHAR(20),
    estadoCivil VARCHAR(255) NOT NULL,
    dataNascimento VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    logradouro VARCHAR(255) NOT NULL,
    numero int NOT NULL,
    complemento VARCHAR(255),
    bairro VARCHAR(255),
    telefone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    situacao VARCHAR(30),
    senha VARCHAR(255) NOT NULL,
    cargo VARCHAR(255),
    filial VARCHAR(255),
    departamento VARCHAR(255),
    PRIMARY KEY(id)
    ) default charset = utf8;
    
insert into cadastroFuncionario values (
default,'JOÃO','257.797.738-25', '37.167.165-5', 'Masculino', 'casado', '10/09/1985', 'São Paulo', 'SP', 'Rua jamil jorge daniel', 171 , 'CASA C','pedreira', '5615-2068', 'valterlafuente@yahoo.com.br','Ativo','19202122','Gerente', 'São Paulo', 'vendas');
select * from cadastrofuncionario;


CREATE TABLE cadastroCliente (
	id int NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(255) NOT NULL,
    rg VARCHAR(255),
	sexo VARCHAR(20),
    estadoCivil VARCHAR(255) NOT NULL,
    dataNascimento VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    logradouro VARCHAR(255) NOT NULL,
    numero int NOT NULL,
    complemento VARCHAR(255),
    bairro VARCHAR(255),
    telefone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    situacao varchar(20) not null,
    PRIMARY KEY(id)
    ) default charset = utf8;
    
    insert into cadastroCliente values (
     default,'jonas','257.797.738-25', '37.167.165-5', 'Masculino', 'casado', '10/09/1985', 'São Paulo', 'SP', 'Rua jamil jorge daniel', 171 , 'CASA C','pedreira', '5615-2068', 'valterlafuente@yahoo.com.br','Inativo');
    
    
   CREATE TABLE cadastroProduto (
	idProduto int NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco float not null,
    quantidade int not null,
    descricao varchar(255) not null,
    categoria varchar(255) not null,
    situacao varchar(30) not null,
    primary key(idProduto)
    ) default charset = utf8;
   
insert into cadastroProduto values(default,'man Black', 89.90, 4, 'Perfue masculino', 'perfume', 'ativo'); 