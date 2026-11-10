# Maior valor 
SELECT MAX(valor_pedido) AS maximo
FROM cap05.TB_PEDIDOS;

# Menor valor 
SELECT MIN(valor_pedido) AS minimo
FROM cap05.TB_PEDIDOS;

# Número de pedidos
SELECT COUNT(*) FROM cap05.TB_PEDIDOS;

# Número de clientes que fizeram pedidos (será?)
SELECT COUNT(id_cliente) FROM cap05.TB_PEDIDOS;

# Lista pedidos
SELECT * FROM cap05.TB_PEDIDOS ORDER BY id_cliente;

# Número de clientes que fizeram pedidos
SELECT COUNT(DISTINCT id_cliente) FROM cap05.TB_PEDIDOS;

# Número de pedidos de clientes do CE
SELECT COUNT(C.id_cliente) AS total_pedidos
FROM cap05.TB_PEDIDOS P, cap05.TB_CLIENTES C
WHERE P.id_cliente = C.id_cliente
AND estado_cliente = 'CE';

# Número de clientes únicos do CE que fizeram pedidos com o nome de cada cliente (query incorreta)
SELECT nome_cliente, cidade_cliente, COUNT(DISTINCT C.id_cliente) AS clientes_unicos
FROM cap05.TB_PEDIDOS P, cap05.TB_CLIENTES C
WHERE P.id_cliente = C.id_cliente
AND estado_cliente = 'CE';

# Número de clientes únicos do CE que fizeram pedidos com o nome de cada cliente
SELECT nome_cliente, cidade_cliente, COUNT(DISTINCT C.id_cliente) AS clientes_unicos
FROM cap05.TB_PEDIDOS P, cap05.TB_CLIENTES C
WHERE P.id_cliente = C.id_cliente
AND estado_cliente = 'CE'
GROUP BY nome_cliente, cidade_cliente;

# Nome e cidade do cliente e número de pedidos
SELECT nome_cliente, cidade_cliente, COUNT(id_pedido) AS num_pedidos
FROM cap05.TB_PEDIDOS P, cap05.TB_CLIENTES C
WHERE P.id_cliente = C.id_cliente
AND estado_cliente = 'CE'
GROUP BY nome_cliente, cidade_cliente;