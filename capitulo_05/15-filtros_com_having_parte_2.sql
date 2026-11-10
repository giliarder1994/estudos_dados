# Qual estado teve mais de 5 pedidos?

SELECT estado_cliente, (COUNT(id_pedido)) AS contagem
FROM cap05.TB_PEDIDOS P INNER JOIN cap05.TB_CLIENTES C 
ON P.id_cliente = C.id_cliente
GROUP BY estado_cliente
ORDER BY contagem DESC;

SELECT estado_cliente, (COUNT(id_pedido)) AS contagem
FROM cap05.TB_PEDIDOS P INNER JOIN cap05.TB_CLIENTES C 
ON P.id_cliente = C.id_cliente
AND contagem > 5
GROUP BY estado_cliente
ORDER BY contagem DESC;

SELECT estado_cliente, (COUNT(id_pedido)) AS contagem
FROM cap05.TB_PEDIDOS P INNER JOIN cap05.TB_CLIENTES C 
ON P.id_cliente = C.id_cliente
GROUP BY estado_cliente
HAVING contagem > 5
ORDER BY contagem DESC;
