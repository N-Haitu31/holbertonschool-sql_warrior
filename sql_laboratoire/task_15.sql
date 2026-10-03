SELECT methode_analyse.nom_methode, ROUND(AVG(TIMESTAMPDIFF(MINUTE, date_debut, date_fin)), 2) AS duree_moyenne_minutes
FROM methode_analyse
JOIN analyse ON methode_analyse.id_methode = analyse.id_methode
WHERE analyse.statut= 'terminee'
GROUP BY methode_analyse.nom_methode
ORDER BY duree_moyenne_minutes DESC;