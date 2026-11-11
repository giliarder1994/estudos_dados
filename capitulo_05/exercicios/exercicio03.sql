# 3- Qual o número de lojas (stores) por cidade dos hubs? 

SELECT COUNT(store_id) AS contagem, hub_city
FROM exercap05.stores AS S, exercap05.hubs AS H
WHERE H.hub_id = S.hub_id
GROUP BY hub_city;

