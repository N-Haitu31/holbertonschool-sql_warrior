SELECT pays, COUNT(realisateurs.id) AS nb_realisateurs
FROM realisateurs
GROUP BY pays
ORDER BY nb_realisateurs DESC, pays;