SELECT id_demande, date_demande, priorite, objet_demande
FROM demande_analyse
WHERE priorite IN ('haute', 'urgente')
ORDER BY date_demande;