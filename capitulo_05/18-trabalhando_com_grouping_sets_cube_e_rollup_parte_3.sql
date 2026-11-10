# Faturamento total por ano e produto a total geral, ordenado pelo agrupamento de produto
SELECT ano, produto, SUM(faturamento) AS faturamento
FROM cap05.TB_VENDAS
GROUP BY ano, produto WITH ROLLUP
ORDER BY GROUPING(produto) DESC;


# Por que não podemos usar o CASE na query acima?

# Faturamento total por ano e país e total geral com agrupamento do resultado
SELECT
	IF(GROUPING(ano), 'Total de Todos os Anos', ano) AS ano,
	IF(GROUPING(pais), 'Total de Todos os Países', pais) AS pais,
	IF(GROUPING(produto), 'Total de Todos os Produtos', produto) AS produto,
	SUM(faturamento) faturamento 
FROM cap05.TB_VENDAS
GROUP BY ano, pais, produto WITH ROLLUP;


# ROLLUP e CUBE tem o mesmo propósito, gerar grouping sets (conjuntos de grupos de dados). 

# ROLLUP faz isso através da hierarquia dos dados.
# CUBE gera todas as combinações possíveis.

# CUBE não é suportado no MySQL. Aqui há um bom material de referência:

# https://www.sqltutorial.org/sql-cube/












