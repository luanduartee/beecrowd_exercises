USE biblioteca_unb;

DELIMITER $$

CREATE TRIGGER trg_sem_estoque
BEFORE INSERT
ON livro
FOR EACH ROW
BEGIN
	IF qtd_total < 0 THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT='Estoque inválido';
	END IF;
END$$

CREATE TRIGGER trg_log_livro
AFTER INSERT
ON livro
FOR EACH ROW
BEGIN
	INSERT INTO LogLivro (mensagem) VALUES ("Livro" + NEW.titulo + "cadastrado com sucesso");
END$$

DELIMITER ;



	