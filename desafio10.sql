SELECT 
  s.name AS nome,
  COUNT(s.name) AS reproducoes
FROM user AS u
INNER JOIN plan AS p ON p.id = u.plan_id
INNER JOIN reprodution_history AS r ON u.id = r.user_id
INNER JOIN song AS s ON s.id = r.song_id
WHERE p.type = 'gratuito' OR p.type = 'pessoal'
GROUP BY nome
ORDER BY nome ASC; 