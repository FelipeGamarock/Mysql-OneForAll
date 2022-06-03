SELECT 
	CAST(MIN(p.price) AS DECIMAL (5,2)) AS  faturamento_minimo,
  CAST(MAX(p.price) AS DECIMAL (5,2)) AS faturamento_maximo,
  CAST(AVG(p.price) AS DECIMAL (5,2)) AS faturamento_medio,
	CAST(SUM(p.price) AS DECIMAL (5,2)) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user AS u ON u.plan_id = p.id;