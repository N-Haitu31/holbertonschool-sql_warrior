SELECT client.nom, COUNT(echantillon.id_echantillon) AS nombre_echantillons
FROM client
LEFT JOIN demande_analyse ON client.id_client = demande_analyse.id_client
LEFT JOIN prelevement ON demande_analyse.id_demande = prelevement.id_demande
LEFT JOIN echantillon ON prelevement.id_prelevement = echantillon.id_prelevement
GROUP BY client.id_client
ORDER BY nombre_echantillons DESC, client.nom;