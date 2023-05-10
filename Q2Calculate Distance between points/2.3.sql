SELECT 
    'Central Park' AS location1, 
    'Grand Central Terminal' AS location2, 
    ST_DistanceSphere(
        ST_SetSRID(
            ST_MakePoint(
                (SELECT ST_X(ST_Transform(way, 4326)) FROM planet_osm_point WHERE name = 'Central Park' AND 
				 amenity = 'bar'),
                (SELECT ST_Y(ST_Transform(way, 4326)) FROM planet_osm_point WHERE name = 'Central Park'AND 
				 amenity = 'bar')
            ),
            4326
        ),
        ST_SetSRID(
            ST_MakePoint(
                (SELECT ST_X(ST_Transform(way, 4326)) FROM planet_osm_point WHERE name = 'Grand Central Terminal' AND 
				 operator = 'Metropolitan Transportation Authority'),
                (SELECT ST_Y(ST_Transform(way, 4326)) FROM planet_osm_point WHERE name = 'Grand Central Terminal' AND 
				 operator = 'Metropolitan Transportation Authority')
            ),
            4326
        )
    ) AS distance_in_meters;

SELECT *, ST_X(ST_Transform(way, 4326)) FROM planet_osm_point WHERE name = 'Grand Central Terminal';