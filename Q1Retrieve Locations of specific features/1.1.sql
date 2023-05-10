SELECT ST_AsText(way), name, amenity
FROM planet_osm_point
WHERE amenity = 'hospital' AND name IS NOT NULL;

