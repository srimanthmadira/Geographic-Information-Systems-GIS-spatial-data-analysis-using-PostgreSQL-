SELECT ST_AsText(way), name AS bank_name, amenity
FROM planet_osm_point
WHERE amenity = 'bank' and name IS NOT NULL;
