SELECT 
  u.name as usuario,
  COUNT(r.user_id) as qtde_musicas_ouvidas,
  ROUND(SUM(s.duration_seconds)/60, 2) AS total_minutos
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.reprodution_history AS r ON u.id = r.user_id
INNER JOIN SpotifyClone.song AS s ON r.song_id = s.id
GROUP BY usuario
ORDER BY usuario;