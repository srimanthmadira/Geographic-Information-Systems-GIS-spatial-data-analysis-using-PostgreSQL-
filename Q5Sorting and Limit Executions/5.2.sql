SELECT r.highway, COUNT(*) as num_roads
FROM planet_osm_roads r
JOIN planet_osm_polygon p ON ST_Intersects(r.way, p.way)
WHERE r.highway IS NOT NULL AND p.landuse = 'residential'
GROUP BY r.highway
ORDER BY num_roads DESC
LIMIT 7;
