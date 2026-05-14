-- Procedimiento almacenado que agrega una corrección (bonus) a un estudiante
-- Si el proyecto no existe, lo crea antes de insertar la corrección
-- Parámetros: user_id, project_name, score
DELIMITER $$

CREATE PROCEDURE AddBonus(
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score INT
)
BEGIN
    DECLARE project_id INT;

    -- Verifica si el proyecto ya existe en la base de datos
    SELECT id INTO project_id
    FROM projects
    WHERE name = project_name
    LIMIT 1;

    -- Si no existe, lo crea primero
    IF project_id IS NULL THEN
        INSERT INTO projects (name) VALUES (project_name);
        SET project_id = LAST_INSERT_ID();
    END IF;

    -- Inserta la corrección con el puntaje correspondiente
    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, project_id, score);
END$$

DELIMITER ;
