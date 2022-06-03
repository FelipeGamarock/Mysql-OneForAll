SELECT 
	COUNT(*) AS quantidade_musicas_no_historico
FROM reprodution_history as r
inner join user AS u on u.id = r.user_id
WHERE u.name = 'Bill'