SELECT
		P1.names,
		SUM(w.z) AS ktval,
		SUM(y.j) AS qbval,
		COALESCE(SUM(w.z),0)- COALESCE(SUM(y.j),0) AS d,
		P1.id,
        P1.parent_id
		FROM
		my_tree AS P1,
		my_tree AS P2
	LEFT JOIN (SELECT dt, SUM(lv) AS z FROM ledger GROUP BY ledger.dt) AS w ON P2.id=w.dt
	LEFT JOIN (SELECT ct, SUM(lv) AS j FROM ledger GROUP BY ledger.ct) AS y ON P2.id=y.ct
	WHERE
		P2.left_key BETWEEN P1.left_key AND P1.right_key --- and ktval notnull and qbval notnull --and P1.levels<3
	GROUP BY
		P1.left_key, P1.names, P1.id
	ORDER BY
		P1.left_key;
		
	--test repo ccc
	--zzzz