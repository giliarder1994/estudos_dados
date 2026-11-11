# 9- Qual o valor total de pedido (order_amount) no channel 'FOOD PLACE'? 

SELECT SUM(order_amount), channel_name
FROM exercap05.orders AS O
INNER JOIN exercap05.channels AS C
ON O.channel_id = C.channel_id
WHERE channel_name = 'FOOD PLACE';

# OU

SELECT SUM(order_amount), channel_name
FROM exercap05.orders AS O, exercap05.channels AS C
WHERE O.channel_id = C.channel_id 
AND channel_name = 'FOOD PLACE';