SELECT realisateurs.pays, genres_film.libelle_genre, ROUND(AVG(dvd.duree_minutes), 1) AS duree_moyenne
FROM realisateurs
JOIN dvd ON realisateurs.id = dvd.realisateur_id
JOIN genres_film ON dvd.genre_id = genres_film.id
GROUP BY realisateurs.pays, genres_film.libelle_genre
ORDER BY realisateurs.pays, genres_film.libelle_genre;