	SELECT
		P1.names,
		P1.val,
		SUM(tval)
	FROM
		my_tree AS P1,
		my_tree AS P2
	LEFT JOIN book ON P2.id=book.treeid
	WHERE
		P2.left_key BETWEEN P1.left_key AND P1.right_key
	GROUP BY
		P1.left_key
	ORDER BY
		P1.left_key;
