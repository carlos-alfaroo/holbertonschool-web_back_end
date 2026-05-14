-- Crea un índice sobre los primeros caracteres del campo 'name'
-- Esto mejora el rendimiento en búsquedas que filtran por nombre
-- El índice parcial de 1 caracter reduce el tamaño del índice en disco
CREATE INDEX idx_name_first
ON names (name(1));
