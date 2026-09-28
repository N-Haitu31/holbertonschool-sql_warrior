SELECT table_location.num_facture, clients.prenom, clients.nom, mangas.titre, types_location.libelle, table_location.date_retour
FROM table_location 
JOIN types_location ON table_location.code_type = types_location.code_type
JOIN factures ON table_location.num_facture = factures.num_facture
JOIN clients ON factures.code_client = clients.code_client
JOIN mangas ON table_location.num_manga = mangas.num_manga
ORDER BY clients.code_client, table_location.num_facture, table_location.num_manga;