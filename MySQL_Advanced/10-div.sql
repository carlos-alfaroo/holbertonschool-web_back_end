-- Función que realiza una división segura entre dos números
-- Retorna 0 si el divisor es 0, evitando errores de división por cero
-- Útil para cálculos en vistas y procedimientos donde el divisor puede ser nulo
DELIMITER $$

CREATE FUNCTION SafeDiv(
    a INT,
    b INT
)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    -- Si el divisor es cero, regresamos 0 para no romper la consulta
    IF b = 0 THEN
        RETURN 0;
    END IF;
    RETURN a / b;
END$$

DELIMITER ;
