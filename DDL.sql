USE biblioteca_unb;

CREATE TABLE livro (
	codigo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    isbn VARCHAR(13) NOT NULL UNIQUE,
    ano_publicacao year NOT NULL,
    qtd_total INT NOT NULL,
    qtd_disponivel INT NOT NULL
);

CREATE TABLE autor (
	codigo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL
);

CREATE TABLE aluno (
	matricula INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    curso VARCHAR(255) NOT NULL,
    semestre INT NOT NULL
);

CREATE TABLE livro_autor (
	cod_livro INT NOT NULL,
    cod_autor INT NOT NULL,
    PRIMARY KEY (cod_livro, cod_autor),
    FOREIGN KEY (cod_livro)
		REFERENCES livro(codigo),
	FOREIGN KEY (cod_autor)
		REFERENCES autor(codigo)
);

CREATE TABLE emprestimo (
	id INT AUTO_INCREMENT PRIMARY KEY,
	aluno INT NOT NULL,
    livro INT NOT NULL,
    dt_emprestimo DATE,
    dt_prev_devolucao DATE NOT NULL,
    dt_devolucao DATE NOT NULL,
    status VARCHAR(50),
    
    FOREIGN KEY (aluno)
		REFERENCES aluno(matricula),
	FOREIGN KEY (livro)
		REFERENCES livro(codigo)
);

CREATE TABLE LogLivro (
	mensagem varchar(255) NOT NULL
);