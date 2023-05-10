SELECT ST_AsText(way), name AS postoffice_name, amenity
FROM planet_osm_point
WHERE amenity = 'post_office' AND name IS NOT NULL;
