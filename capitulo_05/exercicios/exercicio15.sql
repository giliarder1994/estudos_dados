# 15- Qual estado do hub (hub_state), segmento da loja (store_segment) e tipo de canal (channel_type) teve média de valor de pedido (order_amount) maior que 450? 

SELECT hub_state, store_segment, channel_type, ROUND(AVG(order_amount),2) AS media_pedido
FROM exercap05.orders orders, exercap05.stores stores, exercap05.channels channels, exercap05.hubs hubs
WHERE stores.store_id = orders.store_id
AND channels.channel_id = orders.channel_id
AND hubs.hub_id = stores.hub_id
GROUP BY hub_state, store_segment, channel_type
HAVING media_pedido > 450
ORDER BY hub_state;