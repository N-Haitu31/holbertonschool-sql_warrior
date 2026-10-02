SELECT clients.code_client, clients.nom, clients.prenom, COUNT(locations.dvd_id) AS nb_dvd_loues
FROM clients
JOIN factures ON clients.id = factures.client_id
JOIN locations ON factures.id = locations.facture_id
JOIN dvd ON locations.dvd_id = dvd.id
GROUP BY clients.code_client
ORDER BY nb_dvd_loues DESC, clients.nom, clients.prenom;