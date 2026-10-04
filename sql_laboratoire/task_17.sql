WITH echantillons_par_client AS (
    SELECT client.id_client, client.nom AS nom_client, COUNT(echantillon.id_echantillon) AS nombre_echantillons
    FROM client
    LEFT JOIN site ON client.id_client = site.id_client
    LEFT JOIN prelevement ON site.id_site = prelevement.id_site
    LEFT JOIN echantillon ON prelevement.id_prelevement = echantillon.id_prelevement
    GROUP BY client.id_client, client.nom
)
SELECT * FROM echantillons_par_client
ORDER BY id_client;

WITH echantillons_par_client AS (
    SELECT client.id_client, client.nom AS nom_client, COUNT(echantillon.id_echantillon) AS nombre_echantillons
    FROM client
    LEFT JOIN site ON client.id_client = site.id_client
    LEFT JOIN prelevement ON site.id_site = prelevement.id_site
    LEFT JOIN echantillon ON prelevement.id_prelevement = echantillon.id_prelevement
    GROUP BY client.id_client, client.nom
)
SELECT nom_client, nombre_echantillons
FROM echantillons_par_client
WHERE nombre_echantillons >= 1
ORDER BY id_client;