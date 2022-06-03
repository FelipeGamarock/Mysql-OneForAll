SELECT
	art.name AS artista,
	al.name AS album,
	COUNT(*) AS seguidores
FROM artist AS art
INNER JOIN album AS al ON art.id = al.artist_id
INNER JOIN artist_follow AS f ON f.artist_id = al.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;