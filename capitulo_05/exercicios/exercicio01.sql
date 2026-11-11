# 1- Qual o número de hubs por cidade? 
SELECT COUNT(hub_id) AS contagem, hub_city
FROM exercap05.hubs
GROUP BY hub_city
ORDER BY contagem DESC;

SELECT * FROM exercap05.hubs;