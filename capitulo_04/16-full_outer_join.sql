# Left Join
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES as C 
LEFT OUTER JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente;


# Right Join
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES as C 
RIGHT OUTER JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente;


# Full Outer Join (alguns SGBDs não implementam essa junção)
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES as C 
FULL OUTER JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente;