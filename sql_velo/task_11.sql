SELECT utilisateurs.nom_complet, COUNT(locations.utilisateur_id) AS nombre_locations
FROM utilisateurs
JOIN locations ON utilisateurs.id = locations.utilisateur_id
GROUP BY utilisateurs.id
ORDER BY utilisateurs.id;