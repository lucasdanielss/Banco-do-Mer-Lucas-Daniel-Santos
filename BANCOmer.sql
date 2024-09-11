CREATE DATABASE IF NOT EXISTS sistema_educacional;
USE sistema_educacional;

CREATE TABLE IF NOT EXISTS tbl_professores (
    idtbl_professores INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45),
    email VARCHAR(45),
    telefone VARCHAR(45),
    cpf VARCHAR(14),
    idade INT,
    idtbl_cidades INT,
    idtbl_cursos INT,
    FOREIGN KEY (idtbl_cidades) REFERENCES tbl_cidades(idtbl_cidades),
    FOREIGN KEY (idtbl_cursos) REFERENCES tbl_cursos(idtbl_cursos)
);

CREATE TABLE IF NOT EXISTS tbl_cursos (
    idtbl_cursos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_cidades (
    idtbl_cidades INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    uf VARCHAR(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_alunos (
    idtbl_alunos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45),
    email VARCHAR(45),
    telefone VARCHAR(45),
    idade INT
);

CREATE TABLE IF NOT EXISTS tbl_usuarios (
    idtbl_usuarios INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    username VARCHAR(45) NOT NULL UNIQUE,
    senha VARCHAR(45) NOT NULL
);
