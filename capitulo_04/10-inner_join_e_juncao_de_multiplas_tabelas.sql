# Retornar id do pedido, nome do cliente e nome do vendedor

# Inner Join com 3 tabelas
SELECT P.id_pedido, C.nome_cliente, V.nome_vendedor
FROM ((cap04.TB_PEDIDOS AS P
INNER JOIN cap04.TB_CLIENTES AS C ON P.id_cliente = C.id_cliente)
INNER JOIN cap04.TB_VENDEDOR AS V ON P.id_vendedor = V.id_vendedor);

SELECT P.id_pedido, C.nome_cliente, V.nome_vendedor
FROM cap04.TB_PEDIDOS AS P, cap04.TB_CLIENTES AS C, cap04.TB_VENDEDOR AS V
WHERE P.id_cliente = C.id_cliente
  AND P.id_vendedor = V.id_vendedor;
