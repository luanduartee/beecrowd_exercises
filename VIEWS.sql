USE biblioteca_unb;

CREATE VIEW vw_livros_disponiveis AS
SELECT titulo, qtd_disponivel FROM livro
WHERE qtd_disponivel <> 0;

CREATE VIEW vw_emprestimos_abertos AS
SELECT aluno, livro, dt_emprestimo FROM emprestimo
WHERE dt_devolucao IS null;

CREATE VIEW vw_emprestimo_aluno AS
SELECT COUNT(id) AS quantidade, aluno FROM emprestimo
group by aluno;

CREATE VIEW vw_livros_nunca_emprestados AS
SELECT l.titulo FROM livro
LEFT JOIN emprestimo e
ON l.codigo = e.livro
WHERE e.livro IS NULL;