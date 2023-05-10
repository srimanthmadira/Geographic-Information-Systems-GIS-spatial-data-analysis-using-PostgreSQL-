SELECT ST_AsText(way), name AS school_name, amenity
FROM planet_osm_point
WHERE amenity = 'school' AND name IS NOT NULL;
