SELECT types_location.code_type, COUNT(types_location.code_type) AS nb_utilisations
FROM types_location
JOIN table_location ON types_location.code_type = table_location.code_type
WHERE types_location.libelle = 'Retard régularisé'
GROUP BY types_location.code_type;