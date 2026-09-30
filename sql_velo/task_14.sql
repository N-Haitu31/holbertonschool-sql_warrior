SELECT utilisateurs.id, locations.utilisateur_id
FROM utilisateurs
LEFT JOIN locations ON utilisateurs.id = locations.utilisateur_id
WHERE locations.utilisateur_id IS NULL;
