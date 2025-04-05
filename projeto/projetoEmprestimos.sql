CREATE DATABASE aula_27_pk_fk;
USE aula_27_pk_fk;

CREATE TABLE livros(
	id_livro INT AUTO_INCREMENT PRIMARY KEY ,
    titulo VARCHAR (255) NOT NULL,
    autor VARCHAR (100) NOT NULL,
    ano_publicacao INT NOT NULL,
    disponivel BOOLEAN DEFAULT TRUE
);

CREATE TABLE usuarios(
	id_usuarios INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    email VARCHAR (255) UNIQUE NOT NULL,
    telefone VARCHAR (20) NOT NULL
);

CREATE TABLE emprestimos (
	id_emprestimos INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_livro INT,
    data_emprestimo DATE NOT NULL,
    data_evolucao DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuarios),
    FOREIGN KEY (id_livro) REFERENCES livros (id_livro)
    );