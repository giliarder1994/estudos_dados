SELECT DISTINCT menopausa FROM cap03.tb_dados;

SELECT
	CASE
		WHEN menopausa = 'premeno' THEN 1
        WHEN menopausa = 'ge40' THEN 2
        WHEN menopausa = 'lt40' THEN 3
	END AS menopausa
FROM cap03.tb_dados;