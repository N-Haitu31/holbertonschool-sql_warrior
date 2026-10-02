SELECT LEFT(clients.code_postal, 2) AS departement, clients.civilite, COUNT(clients.id) AS nb_clients
FROM clients
GROUP BY departement, clients.civilite
ORDER BY departement, clients.civilite;