DELIMITER $$

CREATE PROCEDURE cadastraLivro (
	IN p_codigo INT,
    IN p_titulo VARCHAR(255),
    IN p_isbn VARCHAR(255),
    IN p_ano_publicacao YEAR,
    IN p_qtd_total INT,
    IN p_qtd_disponivel INT
)

BEGIN 
INSERT INTO `biblioteca_unb`.`livro`
(`codigo`,
`titulo`,
`isbn`,
`ano_publicacao`,
`qtd_total`,
`qtd_disponivel`)
VALUES
(p_codigo,
p_titulo,
p_isbn,
p_ano_publicacao,
p_qtd_total,
p_qtd_disponivel);
END$$

DELIMITER ;