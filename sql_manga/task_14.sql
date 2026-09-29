SELECT genres_manga.signification, ROUND(SUM(prix_base * coefficient), 2) AS chiffre_affaires
FROM genres_manga
JOIN mangas ON genres_manga.code_genre = mangas.code_genre
JOIN table_location ON mangas.num_manga = table_location.num_manga
JOIN types_location ON table_location.code_type = types_location.code_type
GROUP BY genres_manga.signification
ORDER BY chiffre_affaires DESC;