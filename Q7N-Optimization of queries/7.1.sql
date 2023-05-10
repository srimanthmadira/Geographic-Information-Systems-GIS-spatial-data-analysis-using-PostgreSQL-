SELECT name, ST_X(way) as longitude, ST_Y(way) as latitude
FROM planet_osm_point
WHERE amenity = 'restaurant'
LIMIT 10;

CREATE INDEX amenity_index ON planet_osm_point (amenity);
