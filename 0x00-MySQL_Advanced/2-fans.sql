-- This sql script  queries the metal_bands table and ranks country origins of bands, 
-- ordered by the nnumber of (non-unique) fans
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
