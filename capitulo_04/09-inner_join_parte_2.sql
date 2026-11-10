# Retornar id do pedido e nome do cliente
# Inner Join
SELECT P.id_pedido, C.nome_cliente
FROM cap04.TB_PEDIDOS AS P
INNER JOIN cap04.TB_CLIENTES as C ON P.id_cliente = C.id_cliente;

SELECT P.id_pedido, C.nome_cliente
FROM cap04.TB_PEDIDOS AS P, cap04.TB_CLIENTES AS C
WHERE P.id_cliente = C.id_cliente;