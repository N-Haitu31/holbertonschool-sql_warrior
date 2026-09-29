SELECT genres_manga.signification, types_location.libelle, COUNT(table_location.num_manga) AS nombre_location
FROM genres_manga
JOIN mangas ON genres_manga.code_genre = mangas.code_genre
JOIN table_location ON mangas.num_manga = table_location.num_manga
JOIN types_location ON table_location.code_type = types_location.code_type
GROUP BY genres_manga.signification, types_location.libelle
ORDER BY genres_manga.signification ASC;