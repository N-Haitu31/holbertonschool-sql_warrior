SELECT client.nom AS nom_client, site.nom_site, echantillon.code_echantillon, parametre_analyse.nom_parametre, resultat_analyse.valeur_mesuree, resultat_analyse.conforme
FROM client
JOIN site ON client.id_client = site.id_client
JOIN prelevement ON site.id_site = prelevement.id_site
JOIN echantillon ON prelevement.id_prelevement = echantillon.id_prelevement
JOIN analyse ON echantillon.id_echantillon = analyse.id_echantillon
JOIN resultat_analyse ON analyse.id_analyse = resultat_analyse.id_analyse
JOIN methode_analyse ON analyse.id_methode = methode_analyse.id_methode
JOIN parametre_analyse ON methode_analyse.id_parametre = parametre_analyse.id_parametre
ORDER BY client.nom, echantillon.code_echantillon;
