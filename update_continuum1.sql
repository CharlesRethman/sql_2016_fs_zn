UPDATE
	zaf.tmp_continuum_samples 
SET (
	sp_code, num_sas
) = (
	f.sp_code,
	f.num_sas
)
FROM (
	SELECT
		sp_code,
		lz_code,
		sp_name,
		COUNT(sa_code) AS num_sas
	FROM
		zaf.demog_sas
	GROUP BY
		sp_code,
		sp_name,
		lz_code
	) AS f
WHERE
	f.sp_name = zaf.tmp_continuum_samples.sp_name AND f.lz_code = zaf.tmp_continuum_samples.lz_code
;