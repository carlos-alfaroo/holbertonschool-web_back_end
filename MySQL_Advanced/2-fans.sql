-- Clasifica a los orígenes de bandas de metal según el total de fans
-- Agrupa por origin y ordena de mayor a menor cantidad de fans
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
