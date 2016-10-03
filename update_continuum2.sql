UPDATE
	zaf.tmp_continuum_samples
SET (
	main_place_name,
	main_place_code,
	municipality_name,
	municipality_code,
	municipality_mdb_c,
	district_name,
	district_code,
	district_mdb_c,
	province_name,
	province_code,
	province_mdb_c
) = (
	zaf.demog_sas.mp_name,
	zaf.demog_sas.mp_code,
	zaf.demog_sas.mn_name,
	zaf.demog_sas.mn_code,
	zaf.demog_sas.mn_mdb_c,
	zaf.demog_sas.dc_name,
	zaf.demog_sas.dc_code,
	zaf.demog_sas.dc_mdb_c,
	zaf.demog_sas.pr_name,
	zaf.demog_sas.pr_code,
	zaf.demog_sas.pr_mdb_c
)
FROM
	zaf.demog_sas
WHERE
	zaf.tmp_continuum_samples.village_code = zaf.demog_sas.sp_code
;
