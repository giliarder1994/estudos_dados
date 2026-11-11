# 14- Qual a média de valor de pedido (order_amount) por estado do hub (hub_state), segmento da loja (store_segment) e tipo de canal (channel_type)? 

SELECT ROUND(AVG(order_amount),2) AS media, hub_state, store_segment, channel_type
FROM exercap05.orders orders, exercap05.hubs hubs, exercap05.stores stores, exercap05.channels channels
WHERE stores.store_id = orders.store_id
AND channels.channel_id = orders.channel_id
AND hubs.hub_id = stores.hub_id
GROUP BY hub_state, store_segment, channel_type
ORDER BY media DESC;