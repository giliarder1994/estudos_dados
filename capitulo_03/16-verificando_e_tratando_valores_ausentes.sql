# Para ajustar a variavel node_caps iremos agora codificar a variavel e não mais binariza-la

SELECT
	CASE
		WHEN node_caps = 'no' THEN 0
        WHEN node_caps = 'yes' THEN 1
        ELSE 2
	END AS node_caps
FROM cap03.tb_dados;