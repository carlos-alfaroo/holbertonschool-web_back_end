-- Lista las bandas de Glam rock ordenadas por su tiempo de vida (lifespan)
-- Calcula el lifespan usando el año de split o 2022 si siguen activas
SELECT band_name,
       (IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE FIND_IN_SET('Glam rock', IFNULL(style, '')) > 0
ORDER BY lifespan DESC;
