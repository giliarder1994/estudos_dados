# 17- Quando o pedido era do Hub do Rio de Janeiro (hub_state), segmento de loja 'FOOD', tipo de canal Marketplace e foi cancelado, qual foi a média de valor do pedido (order_amount)? 

SELECT hub_state, store_segment, channel_type, ROUND(AVG(order_amount),2) AS media_pedido
FROM exercap05.orders orders, exercap05.stores stores, exercap05.channels channels, exercap05.hubs hubs
WHERE stores.store_id = orders.store_id
AND channels.channel_id = orders.channel_id
AND hubs.hub_id = stores.hub_id
AND order_status = 'CANCELED'
AND store_segment = 'FOOD'
AND channel_type = 'MARKETPLACE'
AND hub_state = 'RJ'
GROUP BY hub_state, store_segment, channel_type;