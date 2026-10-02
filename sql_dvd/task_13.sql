SELECT DISTINCT clients.nom, clients.prenom
FROM clients
JOIN factures ON clients.id = factures.client_id
WHERE factures.date_facture BETWEEN '2006-06-01' AND '2006-06-30'
ORDER BY clients.nom;