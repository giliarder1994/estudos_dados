# 18- Quando o pedido era do segmento de loja 'GOOD', tipo de canal Marketplace e foi cancelado, algum hub_state teve total de valor do pedido superior a 100.000? 

SELECT hub_state, store_segment, channel_type, ROUND(SUM(order_amount),2) AS total_pedido
FROM exercap05.orders orders, exercap05.stores stores, exercap05.channels channels, exercap05.hubs hubs
WHERE stores.store_id = orders.store_id
AND channels.channel_id = orders.channel_id
AND hubs.hub_id = stores.hub_id
AND order_status = 'CANCELED'
AND store_segment = 'GOOD'
AND channel_type = 'MARKETPLACE'
GROUP BY hub_state, store_segment, channel_type
HAVING total_pedido > 100000;