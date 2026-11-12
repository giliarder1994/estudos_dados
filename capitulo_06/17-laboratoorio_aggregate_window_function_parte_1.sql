# Duração total do aluguel das bikes (em horas)

SELECT SUM(duracao_segundos/60/60) AS duracao_total_horas
FROM cap06.tb_bikes;

# Duração total do aluguel das bikes (em horas), ao longo do tempo (soma acumulada)

SELECT duracao_segundos,
	SUM(duracao_segundos/60/60) OVER (ORDER BY data_inicio) AS duracao_total_horas
FROM cap06.tb_bikes;