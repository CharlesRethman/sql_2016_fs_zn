INSERT INTO zaf.tbl_sampling_201602 (
	village_name,
	village_code,
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
	province_mdb_c,
	lz_code, 
	survey)
	SELECT
		sp_name,
		sp_code,
		mp_name,
		mp_code,
		mn_name,
		mn_code,
		mn_mdb_c,
		dc_name,
		dc_code,
		dc_mdb_c,
		pr_name,
		pr_code,
		pr_mdb_c,
		lz_code,
		'continuum'
	FROM
		zaf.demog_sas 
	WHERE sp_code = 5920255
;