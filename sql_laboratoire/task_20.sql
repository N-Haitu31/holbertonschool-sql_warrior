SELECT analyse.id_analyse, echantillon.code_echantillon,
    TIMESTAMPDIFF(MINUTE, analyse.date_debut, analyse.date_fin) AS duree_minutes,
    RANK() OVER (ORDER BY TIMESTAMPDIFF(MINUTE, analyse.date_debut, analyse.date_fin) DESC) AS rang_duree
FROM analyse
JOIN echantillon ON analyse.id_echantillon = echantillon.id_echantillon
WHERE analyse.statut = 'terminee'
ORDER BY duree_minutes DESC;

