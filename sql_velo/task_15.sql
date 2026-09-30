SELECT MONTH(locations.date_debut) AS mois, COUNT(locations.id) AS nombre_locations
FROM locations
GROUP BY mois
ORDER BY mois;