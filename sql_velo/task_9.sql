SELECT velos.code , COUNT(locations.velo_id) AS nombre_locations
FROM velos
JOIN locations ON velos.id = locations.velo_id
GROUP BY velos.code;