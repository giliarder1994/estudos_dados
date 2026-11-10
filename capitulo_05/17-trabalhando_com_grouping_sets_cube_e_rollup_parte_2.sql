# Faturamento total por ano a total geral ordernado por ano
SELECT ano, SUM(faturamento) AS faturamento
FROM cap05.TB_VENDAS
GROUP BY ano WITH ROLLUP
ORDER BY ano;


# Faturamento total por ano e país
SELECT ano, pais, SUM(faturamento) AS faturamento
FROM cap05.TB_VENDAS
GROUP BY ano, pais;


# Faturamento total por ano e país e total geral
SELECT ano, pais, SUM(faturamento) AS faturamento
FROM cap05.TB_VENDAS
GROUP BY ano, pais WITH ROLLUP;


# Faturamento total por ano e produto a total geral
SELECT ano, produto, SUM(faturamento) AS faturamento
FROM cap05.TB_VENDAS
GROUP BY ano, produto WITH ROLLUP