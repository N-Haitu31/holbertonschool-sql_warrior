SELECT DISTINCT parametre_analyse.nom_parametre, parametre_analyse.unite, parametre_analyse.seuil_reglementaire
FROM parametre_analyse
JOIN methode_analyse ON parametre_analyse.id_parametre = methode_analyse.id_parametre
JOIN analyse ON methode_analyse.id_methode = analyse.id_methode
JOIN resultat_analyse ON analyse.id_analyse = resultat_analyse.id_analyse
WHERE resultat_analyse.conforme = 0;