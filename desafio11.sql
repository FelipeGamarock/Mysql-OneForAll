SELECT 
	s.name AS nome_musica,
  (CASE
	  WHEN name LIKE '%Streets' THEN REPLACE(name, 'Streets', 'Code Review')
    WHEN name LIKE '%Her Own' THEN REPLACE(name, 'Her Own', 'Trybe')
    WHEN name LIKE '%Inner Fire' THEN REPLACE(name, 'Inner Fire', 'Project')
    WHEN name LIKE '%Silly' THEN REPLACE(name, 'Silly', 'Nice')
    WHEN name LIKE '%Circus' THEN REPLACE(name, 'Circus', 'Pull Request')
END) AS novo_nome
FROM song AS s
WHERE s.name = 'Dance With Her Own'
OR s.name = 'Let\'s Be Silly'
OR s.name = 'Magic Circus'
OR s.name = 'Troubles Of My Inner Fire'
OR s.name = 'Without My Streets'
ORDER BY s.name; 