# Binarização da variavel node_caps (0/1)
SELECT DISTINCT node_caps FROM cap03.tb_dados;

SELECT
	CASE
		WHEN node_caps = 'no' THEN 0
        WHEN node_caps = 'yes' THEN 1
	END AS node_caps
FROM cap03.tb_dados;

