SELECT types_vehicules.libelle, COUNT(vehicules.type_voiture) AS total
FROM types_vehicules
LEFT JOIN vehicules ON types_vehicules.id = vehicules.type_voiture
GROUP BY types_vehicules.id
ORDER BY total DESC, types_vehicules.libelle;
