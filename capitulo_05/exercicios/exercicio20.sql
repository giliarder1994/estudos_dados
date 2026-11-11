# 20- Em quais datas o valor do pedido foi igual a zero (ou seja, não houve venda)? Dica: Use a função SUBSTRING()

SELECT SUBSTRING(order_moment_created, 1, 9) AS data_pedido, MIN(order_amount) AS min_pedido
FROM exercap05.orders orders
GROUP BY data_pedido
HAVING min_pedido = 0
ORDER BY data_pedido ASC;