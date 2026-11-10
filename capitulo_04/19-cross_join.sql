# CROSS JOIN
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES AS C
CROSS JOIN cap04.TB_PEDIDOS AS P;


# CROSS JOIN
SELECT P.id_pedido, C.nome_cliente
FROM cap04.TB_PEDIDOS AS P, cap04.TB_CLIENTES AS C;


# CROSS JOIN com WHERE tem o mesmo comportamento do INNER JOIN
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES AS C
CROSS JOIN cap04.TB_PEDIDOS AS P
WHERE C.id_cliente = P.id_cliente;