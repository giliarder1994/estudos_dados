# 19- Em que data houve a maior média de valor do pedido (order_amount)? Dica: Pesquise e use a função SUBSTRING(). 

SELECT SUBSTRING(order_moment_created, 1, 9) AS data_pedido, ROUND(AVG(order_amount),2) AS media_pedido
FROM exercap05.orders orders
GROUP BY data_pedido
ORDER BY media_pedido DESC;