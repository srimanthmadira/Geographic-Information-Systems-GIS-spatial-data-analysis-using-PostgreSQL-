SELECT p.name AS park_name, w.name AS waterway_name, ST_Length(w.way) as length
FROM planet_osm_polygon p
JOIN planet_osm_line w ON ST_Intersects(w.way, p.way)
WHERE w.waterway IS NOT NULL AND p.leisure = 'park' AND p.name IS NOT NULL
ORDER BY length DESC
LIMIT 5;
