# Qual a média de tempo (em horas) de aluguel de bike da estação de início 31017?
SELECT estacao_inicio,
       AVG(duracao_segundos/60/60) AS media_tempo_aluguel
FROM cap06.TB_BIKES
WHERE numero_estacao_inicio = 31017
GROUP BY estacao_inicio;

# Qual a média de tempo (em horas) de aluguel da estação de início 31017, ao longo do tempo (média móvel)?
SELECT estacao_inicio,
       AVG(duracao_segundos/60/60) OVER (PARTITION BY estacao_inicio ORDER BY data_inicio) AS media_tempo_aluguel
FROM cap06.TB_BIKES
WHERE numero_estacao_inicio = 31017;