SELECT factures.id AS facture_id, factures.date_facture, clients.nom, clients.prenom, SUM(types_location.tarif) AS montant_total
FROM factures
JOIN clients ON factures.client_id = clients.id
JOIN locations ON factures.id = locations.facture_id
JOIN types_location ON locations.type_location_id = types_location.id
GROUP BY factures.id
ORDER BY montant_total DESC;