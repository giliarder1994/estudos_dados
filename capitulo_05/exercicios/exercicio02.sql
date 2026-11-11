# 2- Qual o número de pedidos (orders) por status? 

SELECT * FROM exercap05.orders;

SELECT COUNT(order_id), order_status
FROM exercap05.orders
GROUP BY order_status;