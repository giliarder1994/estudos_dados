# INNER JOIN e Outras Cláusulas SQL

# Inner Join - Padrão ANSI
SELECT P.id_pedido, C.nome_cliente
FROM cap04.TB_PEDIDOS AS P
INNER JOIN cap04.TB_CLIENTES as C 
ON P.id_cliente = C.id_cliente;


# JOIN sem INNER ainda é INNER
SELECT C.nome_cliente, P.id_pedido
FROM cap04.TB_CLIENTES AS C
JOIN cap04.TB_PEDIDOS AS P 
ON C.id_cliente = P.id_cliente;


# Inner Join quando o nome da coluna é o mesmo em ambas as tabelas
SELECT P.id_pedido, C.nome_cliente
FROM cap04.TB_PEDIDOS AS P
INNER JOIN cap04.TB_CLIENTES as C 
USING (id_cliente);


# Inner Join com WHERE e ORDER BY
SELECT P.id_pedido, C.nome_cliente
FROM cap04.TB_PEDIDOS AS P
INNER JOIN cap04.TB_CLIENTES as C 
USING (id_cliente)
WHERE C.nome_cliente LIKE 'Bob%'
ORDER BY P.id_pedido DESC;