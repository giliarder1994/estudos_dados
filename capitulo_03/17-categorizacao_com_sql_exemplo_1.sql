# Categorização da variavel seio (E/D)
SELECT DISTINCT seio FROM cap03.tb_dados;

SELECT
	CASE
		WHEN seio = 'left' THEN 'E'
        WHEN seio = 'right' THEN 'D'
	END AS seio
FROM cap03.tb_dados;