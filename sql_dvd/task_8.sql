SELECT libelle_genre, COUNT(dvd.genre_id) AS nb_dvd
FROM genres_film
LEFT JOIN dvd ON genres_film.id = dvd.genre_id
GROUP BY libelle_genre
ORDER BY nb_dvd DESC, libelle_genre;