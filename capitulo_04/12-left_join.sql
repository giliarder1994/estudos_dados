# Left Join - indica que queremos todos os dados da tabela da esquerda mesmo sem correspondente na tabela da direita
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES AS C
LEFT JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente;


# Usamos LEFT JOIN como abreviação para LEFT OUTER JOIN
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES AS C
LEFT OUTER JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente;


# Se inverter a ordem das tabelas o resultado é diferente
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_PEDIDOS AS P
LEFT JOIN cap04.TB_CLIENTES AS C 
ON C.id_cliente = P.id_cliente;