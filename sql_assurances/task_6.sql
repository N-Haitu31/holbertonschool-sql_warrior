SELECT deplacements.employe, deplacements.vehicule, deplacements.lieu
FROM deplacements
WHERE deplacements.lieu = 'Nice'
ORDER BY deplacements.employe ASC;