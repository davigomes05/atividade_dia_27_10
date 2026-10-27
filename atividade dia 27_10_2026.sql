CREATE DATABASE inscricao;

USE inscricao;

CREATE TABLE inscricao (
	ID INT auto_increment PRIMARY KEY,
    Nome VARCHAR(50),
    Data_nascimento VARCHAR(10),
    Email VARCHAR(100),
    Cpf INT,
    Endereco VARCHAR(50),
    Cidade VARCHAR(50),
    Numero DECIMAL(50),
    Experiencia VARCHAR(50),
    Escolariadade VARCHAR(50),
    Horario VARCHAR(50)
);

SELECT * FROM inscricao;

-- Mostra quando registros eu tenho na minha tabela
SELECT COUNT(*) FROM inscricao;

-- Quem é do turno da noite?
SELECT apelido, horario
FROM inscricao
WHERE horario = 'Noite';


CREATE DATABASE inscricao;

USE inscricao;

CREATE TABLE inscricao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Data_nascimento DATE,
    Email VARCHAR(100),
    CPF VARCHAR(11),
    Endereco VARCHAR(100),
    Cidade VARCHAR(50),
    Numero INT,
    Experiencia VARCHAR(50),
    Escolaridade VARCHAR(50),
    Horario VARCHAR(50)
);

-- Mostrar todos os registros
SELECT * FROM inscricao;

-- Mostrar quantos registros existem na tabela
SELECT COUNT(*) FROM inscricao;

-- Mostrar quem é do turno da noite
SELECT Nome, Horario
FROM inscricao
WHERE Horario = 'Noite';


-- Quantas pessoas são do turno da tarde?
SELECT COUNT(*) 
FROM inscricao
WHERE Horario = 'Tarde';

-- Quantas pessoas são do turno da noite?
SELECT COUNT(*) 
FROM inscricao
WHERE Horario = 'Noite';

-- Quantas pessoas estão cadastradas?
SELECT COUNT(*) 
FROM inscricao;

-- Mostrar os nomes e e-mails de quem é da tarde
SELECT Nome, Email
FROM inscricao
WHERE Horario = 'Tarde';

-- Mostrar os nomes e e-mails de quem é da noite
SELECT Nome, Email
FROM inscricao
WHERE Horario = 'Noite';

-- Mostrar quem tem experiência
SELECT Nome, Experiencia
FROM inscricao
WHERE Experiencia IS NOT NULL;

-- Mostrar os nomes e as cidades de todos os inscritos
SELECT Nome, Cidade
FROM inscricao;

ALTER TABLE inscricao
CHANGE Escolariadade Escolaridade VARCHAR(50);

-- Mostrar os dados de quem nasceu antes de 2000
SELECT Nome, Data_nascimento
FROM inscricao
WHERE Data_nascimento < '2000-01-01';

-- Mostrar os inscritos por ordem alfabética
SELECT *
FROM inscricao
ORDER BY Nome ASC;



