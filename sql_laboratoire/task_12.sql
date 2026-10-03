SELECT CONCAT(employe.prenom, ' ', employe.nom) AS analyste, COUNT(analyse.id_analyse) AS nombre_analyses
FROM employe
JOIN role_employe ON employe.id_role = role_employe.id_role
LEFT JOIN analyse ON employe.id_employe = analyse.id_analyste
WHERE role_employe.libelle_role = 'analyste'
GROUP BY employe.id_employe
ORDER BY nombre_analyses DESC;