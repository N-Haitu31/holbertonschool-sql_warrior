SELECT ville, COUNT(clients.code_client) AS nombre_de_clients, SUM(clients.enfants) AS nombre_d_enfants
FROM clients
GROUP BY ville
ORDER BY ville ASC;