DELIMITER //

CREATE PROCEDURE ExibirERedefinirStatusMesa (
    IN p_mesa_id INT,
    IN p_novo_status VARCHAR(50)
)
BEGIN
    -- Exibir o status atual da mesa
    SELECT status INTO @status_atual FROM Mesas WHERE mesa_id = p_mesa_id;
    
    -- Exibir o status atual
    SELECT CONCAT('O status atual da mesa ', p_mesa_id, ' é: ', @status_atual) AS StatusAtual;
    
    -- Redefinir o status da mesa
    UPDATE Mesas SET status = p_novo_status WHERE mesa_id = p_mesa_id;
    
    -- Exibir o novo status
    SELECT CONCAT('O novo status da mesa ', p_mesa_id, ' é: ', p_novo_status) AS NovoStatus;
END //

DELIMITER ;
