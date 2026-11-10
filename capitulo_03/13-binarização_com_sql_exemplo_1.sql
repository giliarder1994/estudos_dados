SELECT COUNT(*) AS total FROM cap03.tb_dados;

# Binarização da variavel classe (0/1)
SELECT DISTINCT classe FROM cap03.tb_dados;

SELECT 
	CASE
		WHEN classe = 'no-recurrence-events' THEN 0
        WHEN classe = 'recurrence-events' THEN 1
	END as classe
FROM cap03.tb_dados;