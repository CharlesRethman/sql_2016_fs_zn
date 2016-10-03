UPDATE
	zaf.tbl_sampling_201602
SET
	survey = 'both'
FROM (
	SELECT
		f.village_code
	FROM
		zaf.tmp_continuum_samples AS f,
		zaf.tbl_sampling_201602
	WHERE
		f.village_code = zaf.tbl_sampling_201602.village_code
) AS g
WHERE
	zaf.tbl_sampling_201602.village_code = g.village_code;

	