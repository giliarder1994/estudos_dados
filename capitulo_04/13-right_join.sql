# Retornar todos os clientes, com ou sem pedido associado (usando Right Join)


# Right Join - indica que queremos todos os dados da tabela da direita mesmo sem correspondente na tabela da esquerda

SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES AS C
LEFT JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente;

SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_PEDIDOS AS P
RIGHT JOIN cap04.TB_CLIENTES AS C 
ON C.id_cliente = P.id_cliente;