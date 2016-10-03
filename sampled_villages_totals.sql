SELECT
	survey,
	COUNT(village_code)
FROM 
	zaf.tbl_sampled_villages
WHERE
	sampled_date = (
		SELECT
			MAX(sampled_date)
		FROM
			zaf.tbl_sampled_villages
	)
GROUP BY
	survey


UNION SELECT
	'total villages' AS survey,
	COUNT(village_code)
FROM
	zaf.tbl_sampled_villages
WHERE
	sampled_date = (
		SELECT
			MAX(sampled_date)
		FROM zaf.tbl_sampled_villages
	)


UNION SELECT
	'total continuum',
	COUNT(village_code)
FROM
	zaf.tbl_sampled_villages
WHERE 
		survey <> 'hea'
	AND
		sampled_date = (
			SELECT
				MAX(sampled_date)
			FROM
				zaf.tbl_sampled_villages
		)


UNION SELECT
	'total hea',
	COUNT(village_code)
FROM
	zaf.tbl_sampled_villages
WHERE
		survey <> 'continuum'
	AND
		sampled_date = (
			SELECT
				MAX(sampled_date)
			FROM
				zaf.tbl_sampled_villages
		)


ORDER BY survey;
