/*BEFORE OPTIMIZATION*/
EXPLAIN ANALYZE
SELECT osm_id, name, historic, building
FROM planet_osm_polygon
WHERE building IS NOT NULL AND historic = 'memorial';

/*AFTER OPTIMIZATION*/
EXPLAIN ANALYZE 
SELECT p1.osm_id, p1.name, p1.historic, p1.building
FROM planet_osm_polygon p1
JOIN planet_osm_polygon p2 ON ST_Intersects(p1.way, p2.way)
WHERE p1.building IS NOT NULL AND p1.historic = 'memorial' AND p2.name = 'Manhattan';