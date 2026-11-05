SELECT nome_navio, classificacao_risco, indice_conformidade, pontuacao_risco, temporada
FROM cap02.tb_navios
WHERE indice_conformidade IN (SELECT indice_conformidade
						FROM cap02.tb_navios
                        WHERE indice_conformidade > 90)
								AND pontuacao_risco = 0
                                AND mes_ano = '04/2018'
ORDER BY indice_conformidade