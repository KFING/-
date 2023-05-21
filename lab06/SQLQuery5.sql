SELECT CONVERT(float, CONVERT(float, SUM([OCENKA])) / CONVERT(float, (COUNT(*)))) AS 'средн€€ оценка'
FROM USP
GROUP BY UDATE
HAVING MIN([OCENKA]) = CONVERT(float, CONVERT(float, SUM([OCENKA])) / CONVERT(float, (COUNT(*))));