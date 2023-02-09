-- This sql script queries the metal_bands table and lists all bands with Glam rock as their manin style, ranked by their longevity
SELECT band_name, (IFNULL(split, '2022') - formed) AS lifespan
FROM metal_bonds
WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
ORDER BY lifespan DESC;
