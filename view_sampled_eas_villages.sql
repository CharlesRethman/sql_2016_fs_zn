DROP VIEW IF EXISTS zaf.vw_sampled_eas;

CREATE VIEW zaf.vw_sampled_eas AS
	SELECT
		h.gid,
		h.the_geom,
		h.ea_code,
		village_name,
		village_code,
		mp_name AS main_place_name,
		mp_code AS main_place_code,
		mn_name AS municipality_name,
		mn_code AS municipality_code,
		dc_name AS district_name,
		dc_code AS district_code,
		pr_name AS province_name,
		pr_code AS province_code,
		h.lz_code || ': ' || h.lz_name || ' (' || h.lz_abbrev || ')' AS lz,
		l.pop AS village_pop,
		survey
	FROM ((
		SELECT 
			gid,
			the_geom,
			ea_code,
			sp_code,
			mp_name,
			mp_code,
			mn_name,
			mn_code,
			dc_name,
			dc_code,
			pr_name,
			pr_code,
			f.lz_code,
			lz_name,
			lz_abbrev
		FROM
			zaf.demog_eas AS f,
			zaf.tbl_livezones_list AS g
		WHERE
			f.lz_code = g.lz_code
		) AS h
	INNER JOIN
		zaf.tbl_sampled_villages AS i
	ON
		h.sp_code = i.village_code AND h.lz_code = i.lz_code
	) INNER JOIN (
		SELECT
			k.sp_code,
			SUM(total) AS pop
		FROM
			zaf.tbl_pop_agegender_12y AS j,
			zaf.demog_sas AS k
		WHERE
			k.sa_code = j.sa_code
		GROUP BY
		k.sp_code
		) AS l
	ON
		i.village_code = l.sp_code
	WHERE
			survey = 'continuum' OR survey = 'both'
		AND
			sampled_date = (SELECT MAX(sampled_date) FROM zaf.tbl_sampled_villages)
	ORDER BY
		province_name, district_name, municipality_name, main_place_name, village_name, h.ea_code
;

SELECT 
	ea_code,
	province_name,
	district_name,
	municipality_name,
	main_place_name, 
	village_name,
	village_code,
	lz,
	village_pop,
	survey
FROM
	zaf.vw_sampled_eas;