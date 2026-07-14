USE biblioteca_unb;

DELIMITER $$

CREATE FUNCTION QtdLivroDisponivel (
    p_id_livro INT
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE v_quantidade INT;

    SELECT qtd_disponivel
    INTO v_quantidade
    FROM livro
    WHERE codigo = p_id_livro;

    RETURN v_quantidade;
END$$

DELIMITER ;