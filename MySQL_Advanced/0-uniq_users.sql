-- Crea la tabla 'users' con id, email (único) y nombre
-- Si la tabla ya existe, no lanza error gracias a IF NOT EXISTS
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    PRIMARY KEY (id)
);
