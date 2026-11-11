# 16- Qual o valor total de pedido (order_amount) por estado do hub (hub_state), segmento da loja (store_segment) e tipo de canal (channel_type)? Demonstre os totais intermediários e formate o resultado. 

SELECT 
	IF(GROUPING(hub_state), 'Total Hub State', hub_state) AS hub_state,
    IF(GROUPING(store_segment), 'Total Segmento', store_segment) AS store_segment,
    IF(GROUPING(channel_type), 'Total Tipo de Canal', channel_type) AS channel_type,
    ROUND(SUM(order_amount),2) total_pedido
FROM exercap05.orders orders, exercap05.stores stores, exercap05.channels channels, exercap05.hubs hubs
WHERE stores.store_id = orders.store_id
AND channels.channel_id = orders.channel_id
AND hubs.hub_id = stores.hub_id
GROUP BY hub_state, store_segment, channel_type WITH ROLLUP;