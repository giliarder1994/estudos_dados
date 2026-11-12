# Estação, data de início, duração em segundos do aluguel e número de aluguéis ao longo do tempo
SELECT estacao_inicio,
       data_inicio,
       duracao_segundos,
       ROW_NUMBER() OVER (PARTITION BY estacao_inicio ORDER BY data_inicio) AS numero_alugueis
FROM cap06.TB_BIKES
WHERE data_inicio < '2012-01-08';

# Estação, data de início, duração em segundos do aluguel e número de aluguéis ao longo do tempo
# para a estação de id 31000
SELECT estacao_inicio,
       data_inicio,
       duracao_segundos,
       ROW_NUMBER() OVER (PARTITION BY estacao_inicio ORDER BY data_inicio) AS numero_alugueis
FROM cap06.TB_BIKES
WHERE data_inicio < '2012-01-08'
AND numero_estacao_inicio = 31000;


# Estação, data de início, duração em segundos do aluguel e número de aluguéis ao longo do tempo
# para a estação de id 31000, com a coluna de data_inicio convertida para o formato date
SELECT estacao_inicio,
       CAST(data_inicio as date) AS data_inicio,
       duracao_segundos,
       ROW_NUMBER() OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS numero_alugueis
FROM cap06.TB_BIKES
WHERE data_inicio < '2012-01-08'
AND numero_estacao_inicio = 31000;


# Estação, data de início, duração em segundos do aluguel e número de aluguéis ao longo do tempo
# para a estação de id 31000, com a coluna de data_inicio convertida para o formato date
# Queremos a ordem (classificação ou ranking) dos dias de aluguel ao longo do tempo
# DENSE_RANK() concede todas as linhas idênticas a mesma classificação (ranking) e salta para o próximo item no ranking
SELECT estacao_inicio,
       CAST(data_inicio as date),
       duracao_segundos,
       DENSE_RANK() OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS ranking_aluguel
FROM cap06.TB_BIKES
WHERE data_inicio < '2012-01-08'
AND numero_estacao_inicio = 31000;


# Estação, data de início, duração em segundos do aluguel e número de aluguéis ao longo do tempo
# para a estação de id 31000, com a coluna de data_inicio convertida para o formato date
# Queremos a ordem (classificação ou ranking) dos dias de aluguel ao longo do tempo
# RANK() concede todas as linhas idênticas a mesma classificação (ranking) e salta para o próximo item no ranking
SELECT estacao_inicio,
       CAST(data_inicio as date),
       duracao_segundos,
       RANK() OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS ranking_aluguel
FROM cap06.TB_BIKES
WHERE data_inicio < '2012-01-08'
AND numero_estacao_inicio = 31000;


# Comparando as funções
SELECT estacao_inicio,
       CAST(data_inicio as date) AS data_inicio,
       duracao_segundos,
       ROW_NUMBER() OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS numero_alugueis,
       DENSE_RANK() OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS ranking_aluguel_dense_rank,
       RANK() OVER (PARTITION BY estacao_inicio ORDER BY CAST(data_inicio as date)) AS ranking_aluguel_rank
FROM cap06.TB_BIKES
WHERE data_inicio < '2012-01-08'
AND numero_estacao_inicio = 31000;