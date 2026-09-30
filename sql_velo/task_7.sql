SELECT locations.id, utilisateurs.nom_complet, velos.code, locations.date_debut, locations.date_fin, paiements.montant
FROM utilisateurs
JOIN locations ON utilisateurs.id = locations.utilisateur_id
JOIN paiements ON locations.id = paiements.location_id
JOIN velos ON locations.velo_id = velos.id
WHERE locations.id = 1;