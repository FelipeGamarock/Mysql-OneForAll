SELECT 
	s.name AS cancao,
  COUNT(r.song_id) AS reproducoes
FROM song AS s
INNER JOIN reprodution_history AS r ON s.id = r.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;