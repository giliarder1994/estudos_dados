# Resolvemos o problema com o UNION e UNION ALL

# UNION
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES as C 
LEFT OUTER JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente
UNION
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES as C 
RIGHT OUTER JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente;


# UNION ALL
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES as C 
LEFT OUTER JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente
UNION ALL
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES as C 
RIGHT OUTER JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente;