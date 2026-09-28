SELECT genres_manga.signification AS genre, COUNT(genres_manga.code_genre) AS nombre_de_manga_par_genre
FROM genres_manga
JOIN mangas ON genres_manga.code_genre = mangas.code_genre
GROUP BY genres_manga.signification
ORDER BY nombre_de_manga_par_genre DESC;