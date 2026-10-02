SELECT genres_film.libelle_genre, ROUND(AVG(dvd.duree_minutes), 1) AS duree_moyenne
FROM genres_film
JOIN dvd ON genres_film.id = dvd.genre_id
GROUP BY genres_film.libelle_genre
ORDER BY duree_moyenne DESC, libelle_genre;