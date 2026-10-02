SELECT site.nom_site, site.ville, site.type_site, client.nom AS client
FROM site
JOIN client ON site.id_client = client.id_client
ORDER BY client.nom, site.nom_site;