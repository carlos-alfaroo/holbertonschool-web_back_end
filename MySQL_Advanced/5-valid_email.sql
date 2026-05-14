-- Crea un trigger que restablece el campo 'valid_email' a 0
-- cuando el correo del usuario cambia, forzando una nueva validación
-- Esto previene que usuarios accedan con emails sin verificar
DELIMITER $$

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email != OLD.email THEN
        SET NEW.valid_email = 0;
    END IF;
END$$

DELIMITER ;
