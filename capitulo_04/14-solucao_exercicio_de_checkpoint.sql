# Retornar a data do pedido, o nome do cliente, todos os vendedores, com ou sem pedido associado, e ordenar o resultado pelo nome do cliente.


# Solução
SELECT P.data_pedido, C.nome_cliente, V.nome_vendedor
FROM ((cap04.TB_PEDIDOS AS P
JOIN cap04.TB_CLIENTES AS C ON P.id_cliente = C.id_cliente)
RIGHT JOIN cap04.TB_VENDEDOR AS V ON P.id_vendedor = V.id_vendedor)
ORDER BY C.nome_cliente;


# Solução com mais detalhes
SELECT 
    CASE 
      WHEN P.data_pedido IS NULL THEN "Sem Pedido"
            ELSE P.data_pedido
    END AS data_pedido,
    CASE 
      WHEN C.nome_cliente IS NULL THEN "Sem Pedido"
            ELSE C.nome_cliente
    END AS nome_cliente,
        V.nome_vendedor
FROM ((cap04.TB_PEDIDOS AS P
JOIN cap04.TB_CLIENTES AS C ON P.id_cliente = C.id_cliente)
RIGHT JOIN cap04.TB_VENDEDOR AS V ON P.id_vendedor = V.id_vendedor)
ORDER BY C.nome_cliente;