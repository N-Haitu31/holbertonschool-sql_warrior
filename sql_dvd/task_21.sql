SELECT genres_film.libelle_genre, COUNT(locations.id) AS nb_locations
FROM genres_film
JOIN dvd ON genres_film.id = dvd.genre_id
JOIN locations ON dvd.id = locations.dvd_id
GROUP BY genres_film.libelle_genre
ORDER BY nb_locations DESC, genres_film.libelle_genre;