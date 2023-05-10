CREATE INDEX amenity_index ON planet_osm_point (amenity);

SELECT name, ST_X(way) AS lon, ST_Y(way) AS lat
FROM planet_osm_point
WHERE amenity = 'university';



