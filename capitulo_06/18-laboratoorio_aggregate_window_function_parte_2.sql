# Duração total do aluguel das bikes (em horas), ao longo do tempo, 
# por estação de inicio do aluguel da bike, quando a data de inicio foi inferior a '2012-01-08'

SELECT estacao_inicio, 
	duracao_segundos,
	SUM(duracao_segundos/60/60) OVER (PARTITION BY estacao_inicio ORDER BY data_inicio) AS tempo_total_horas    
FROM cap06.tb_bikes
WHERE data_inicio < '2012-01-08';


# Mesma query anterior sem ORDER BY no Partition

SELECT estacao_inicio,
       duracao_segundos,
       SUM(duracao_segundos/60/60) OVER (PARTITION BY estacao_inicio) AS estacao_inicio_total
FROM cap06.TB_BIKES
WHERE data_inicio < '2012-01-08';