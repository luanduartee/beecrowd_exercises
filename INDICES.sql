USE biblioteca_unb;

CREATE INDEX idx_matricula_aluno
ON aluno(matricula);

CREATE INDEX idx_codigo_autor
ON autor(codigo);

CREATE INDEX idx_emprestimo
ON emprestimo(id);