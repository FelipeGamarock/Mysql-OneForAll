SELECT 
	art.name AS artista,
	al.name AS album
FROM artist AS art
INNER JOIN album AS al ON al.artist_id = art.id
WHERE art.name = 'Walter Phoenix';