SELECT dvd.titre, clients.nom, clients.prenom, clients.date_naissance
FROM dvd
JOIN genres_film ON dvd.genre_id = genres_film.id
JOIN locations ON dvd.id = locations.dvd_id
JOIN factures ON locations.facture_id = factures.id
JOIN clients ON factures.client_id = clients.id
WHERE genres_film.code_genre = 'AV' AND clients.date_naissance BETWEEN '1960-01-01' AND '1969-12-31'
ORDER BY dvd.titre;