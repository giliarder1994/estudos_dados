# NTILE
# A função NTILE() é uma função de janela (window) que distribui linhas de uma partição ordenada em um número predefinido 
# de grupos aproximadamente iguais. A função atribui a cada grupo um número a partir de 1. 
SELECT estacao_inicio,
       duracao_segundos,
       ROW_NUMBER() OVER (PARTITION BY estacao_inicio ORDER BY duracao_segundos) AS numero_alugueis,
       NTILE(2) OVER (PARTITION BY estacao_inicio ORDER BY duracao_segundos) AS numero_grupo_dois,
       NTILE(4) OVER (PARTITION BY estacao_inicio ORDER BY duracao_segundos) AS numero_grupo_quatro,
       NTILE(5) OVER (PARTITION BY estacao_inicio ORDER BY duracao_segundos) AS numero_grupo_cinco
FROM cap06.TB_BIKES
WHERE data_inicio < '2012-01-08'
AND numero_estacao_inicio = 31000;


# NTILE
SELECT estacao_inicio,
       CAST(data_inicio as date) AS data_inicio,
       duracao_segundos,
       ROW_NUMBER() OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS numero_alugueis,
       NTILE(1) OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS numero_grupo,
       NTILE(4) OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS numero_grupo,
       NTILE(16) OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS numero_grupo
FROM cap06.TB_BIKES
WHERE data_inicio < '2012-01-08'
AND numero_estacao_inicio = 31000;