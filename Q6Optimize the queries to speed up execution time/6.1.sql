EXPLAIN SELECT name, ST_X(way) AS LONGITUDE, ST_Y(way) AS LATITUDE
FROM planet_osm_point
WHERE amenity = 'cafe' AND 
  ST_Intersects(way, ST_Transform(ST_MakeEnvelope(-74.25909, 40.477399, -73.700181, 40.917577, 4326), 3857));

CREATE INDEX ON planet_osm_point USING gist (way);


DROP INDEX IF EXISTS planet_osm_point_way_idx;
CREATE INDEX ON planet_osm_point (amenity);
