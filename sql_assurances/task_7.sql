SELECT deplacements.vehicule, COUNT(deplacements.vehicule) AS nb_deplacements
FROM deplacements
GROUP BY deplacements.vehicule
ORDER BY nb_deplacements DESC, deplacements.vehicule;