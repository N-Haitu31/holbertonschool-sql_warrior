SELECT civilite, COUNT(clients.civilite) AS nb_clients
FROM clients
GROUP BY clients.civilite
ORDER BY nb_clients DESC;