SELECT r.name AS road_name, p.name AS park_name
FROM planet_osm_roads r
JOIN planet_osm_polygon p
ON ST_Intersects(r.way, p.way)
WHERE r.highway = 'primary' AND p.leisure = 'park';
