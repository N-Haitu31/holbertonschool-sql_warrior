SELECT factures.num_facture, SUM(prix_base * coefficient) AS depenses
FROM factures
JOIN table_location ON factures.num_facture = table_location.num_facture
JOIN mangas ON table_location.num_manga = mangas.num_manga
JOIN types_location ON table_location.code_type = types_location.code_type
GROUP BY factures.num_facture
ORDER BY factures.num_facture ASC;