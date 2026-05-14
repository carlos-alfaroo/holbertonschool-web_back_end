-- Calcula el promedio de todos los puntajes de un usuario dado
-- y actualiza el campo 'average_score' en la tabla 'users'
-- Útil para mantener un resumen actualizado sin calcular en cada consulta
DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE avg_score FLOAT;

    -- Calcula el promedio de las correcciones del usuario
    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE corrections.user_id = user_id;

    -- Actualiza el promedio directamente en la tabla users
    UPDATE users
    SET average_score = avg_score
    WHERE id = user_id;
END$$

DELIMITER ;
