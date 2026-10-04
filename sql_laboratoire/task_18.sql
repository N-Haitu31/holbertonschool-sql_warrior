SELECT echantillon.code_echantillon, analyse.id_analyse,
    CASE
        WHEN resultat_analyse.conforme = 1 THEN 'conforme'
        WHEN resultat_analyse.conforme = 0 THEN 'non conforme'
        ELSE 'en attente'
    END AS statut_resultat
FROM echantillon
JOIN analyse ON echantillon.id_echantillon = analyse.id_echantillon
LEFT JOIN resultat_analyse ON analyse.id_analyse = resultat_analyse.id_analyse;
