-- Lista las bandas de Glam rock ordenadas por su tiempo de vida (lifespan)
-- Calcula el lifespan usando el año de split o 2022 si siguen activas
SELECT band_name,
       (IFNULL(split, 2024) - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%' 
ORDER BY lifespan DESC;
