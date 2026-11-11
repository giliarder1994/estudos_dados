# 7- Qual a média de valor de pedido (order_amount) por loja, em ordem decrescente? 

SELECT ROUND(AVG(order_amount),2) AS media, store_name
FROM exercap05.orders AS O
INNER JOIN exercap05.stores AS S
ON O.store_id = S.store_id
GROUP BY store_name
ORDER BY media DESC;