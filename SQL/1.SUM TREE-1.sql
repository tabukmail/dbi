	SELECT
		P1.names, 
		SUM(tval),
		P1.id,
		P1.parent_id
	FROM
		my_tree AS P1,
		my_tree AS P2
	LEFT JOIN book ON P2.id=book.treeid
	WHERE
		P2.left_key BETWEEN P1.left_key AND P1.right_key AND P1.levels<=4
	GROUP BY
		P1.left_key, P1.names, P1.parent_id, P1.id
	ORDER BY
		P1.left_key;
--zzz