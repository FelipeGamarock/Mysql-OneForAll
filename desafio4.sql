SELECT 
	u.name as usuario,
  (CASE
		WHEN YEAR(MAX(DATE(r.date))) = 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
  END) AS condicao_usuario
FROM user as u
INNER JOIN reprodution_history as r ON u.id = r.user_id
GROUP BY usuario
ORDER BY usuario;
