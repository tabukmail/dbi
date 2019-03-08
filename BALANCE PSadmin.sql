SELECT
		P1.names,
		SUM(w.z) AS ktval,
		SUM(y.j) AS qbval			
		--COALESCE(SUM(w.z),0)- COALESCE(SUM(y.j),0) AS d
		FROM
		my_tree AS P1,
		my_tree AS P2
	LEFT JOIN (SELECT treeid, SUM(tval) AS z FROM book GROUP BY book.treeid) AS w ON P2.id=w.treeid
	LEFT JOIN (SELECT btreeid, SUM(bval) AS j FROM begina GROUP BY begina.btreeid) AS y ON P2.id=y.btreeid
	WHERE
		P2.left_key BETWEEN P1.left_key AND P1.right_key
	GROUP BY
		P1.left_key, P1.names
	ORDER BY
		P1.left_key;