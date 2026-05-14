-- Crea un índice compuesto sobre nombre (primer carácter) y puntaje
-- Los índices compuestos aceleran consultas que filtran por ambas columnas
-- Es más eficiente que tener dos índices separados para este caso de uso
CREATE INDEX idx_name_first_score
ON names (name(1), score);
