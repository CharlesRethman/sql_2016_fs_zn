SELECT
	lz,
	ROUND (pop_01 / pop, 4) AS pc_01,
	ROUND (pop_02 / pop, 4) AS pc_02,
	ROUND (pop_03 / pop, 4) AS pc_03,
	ROUND (pop_04 / pop, 4) AS pc_04,
	ROUND (pop_05 / pop, 4) AS pc_05,
	ROUND (pop_06 / pop, 4) AS pc_06,
	ROUND (pop_07 / pop, 4) AS pc_07,
	ROUND (pop_08 / pop, 4) AS pc_08,
	ROUND (pop_09 / pop, 4) AS pc_09,
	ROUND ("pop_10+" / pop, 4) AS "pc_10+"
FROM (
	SELECT
		f.lz_code || ': ' || lz_name || ' (' || lz_abbrev || ')' AS lz,
		COUNT(f.sa_code) AS num_sas,
		SUM(hh_01) + SUM(hh_02) * 2 + SUM(hh_03) * 3 + SUM(hh_04) * 4 + SUM(hh_05) * 5 + SUM(hh_06) * 6 + SUM(hh_07) * 7 +
				SUM(hh_08) * 8 + SUM(hh_09) * 9 + SUM(hh_10plus) * 10 AS pop,
		ROUND (CAST (SUM(hh_01) AS numeric) * 1 , 0) AS pop_01,
		ROUND (CAST (SUM(hh_02) AS numeric) * 2 , 0) AS pop_02,
		ROUND (CAST (SUM(hh_03) AS numeric) * 3 , 0) AS pop_03,
		ROUND (CAST (SUM(hh_04) AS numeric) * 4 , 0) AS pop_04,
		ROUND (CAST (SUM(hh_05) AS numeric) * 5 , 0) AS pop_05,
		ROUND (CAST (SUM(hh_06) AS numeric) * 6 , 0) AS pop_06,
		ROUND (CAST (SUM(hh_07) AS numeric) * 7 , 0) AS pop_07,
		ROUND (CAST (SUM(hh_08) AS numeric) * 8 , 0) AS pop_08,
		ROUND (CAST (SUM(hh_09) AS numeric) * 9 , 0) AS pop_09,
		ROUND (CAST (SUM(hh_10plus) AS numeric) * 10 , 0) AS "pop_10+",
		SUM(total) AS num_hhs
--	pc_01 + pc_02 + pc_03 + pc_03 + pc_04 + pc_05 + pc_06 + pc_07 + pc_08 + pc_09 + "pc_10+" AS check
--	SUM("male_0-12")/pop AS "pc_m_0-12"
	FROM
		zaf.demog_sas AS f,
		zaf.tbl_temp_hhs AS g,
		(
			SELECT
				i.lz_code,
				lz_abbrev,
				lz_name
			FROM
				zaf.tbl_sampling_201602 AS i,
				zaf.tbl_livezones_list AS j
			WHERE
				i.lz_code = j.lz_code
			GROUP BY
				i.lz_code,
				lz_abbrev,
				lz_name
		) AS h
	WHERE
			f.sa_code = CAST (g.sa_code AS INTEGER)
		AND
			f.lz_code = h.lz_code
	GROUP BY
		f.lz_code,
		lz_name,
		lz_abbrev

	UNION SELECT
		'All ten livelihood zones' AS lz,
		COUNT(k.sa_code) AS num_sas,
		SUM(hh_01) + SUM(hh_02) * 2 + SUM(hh_03) * 3 + SUM(hh_04) * 4 + SUM(hh_05) * 5 + SUM(hh_06) * 6 + SUM(hh_07) * 7 +
				SUM(hh_08) * 8 + SUM(hh_09) * 9 + SUM(hh_10plus) * 10 AS pop,
		ROUND (CAST (SUM(hh_01) AS numeric) * 1 , 0) AS pop_01,
		ROUND (CAST (SUM(hh_02) AS numeric) * 2 , 0) AS pop_02,
		ROUND (CAST (SUM(hh_03) AS numeric) * 3 , 0) AS pop_03,
		ROUND (CAST (SUM(hh_04) AS numeric) * 4 , 0) AS pop_04,
		ROUND (CAST (SUM(hh_05) AS numeric) * 5 , 0) AS pop_05,
		ROUND (CAST (SUM(hh_06) AS numeric) * 6 , 0) AS pop_06,
		ROUND (CAST (SUM(hh_07) AS numeric) * 7 , 0) AS pop_07,
		ROUND (CAST (SUM(hh_08) AS numeric) * 8 , 0) AS pop_08,
		ROUND (CAST (SUM(hh_09) AS numeric) * 9 , 0) AS pop_09,
		ROUND (CAST (SUM(hh_10plus) AS numeric) *10 , 0) AS "pop_10+",
		SUM(total) AS num_hhs
--	pc_01 + pc_02 + pc_03 + pc_03 + pc_04 + pc_05 + pc_06 + pc_07 + pc_08 + pc_09 + "pc_10+" AS check
	FROM
		zaf.demog_sas AS k,
		zaf.tbl_temp_hhs AS l,
		(
			SELECT
				lz_code
			FROM
				zaf.tbl_sampling_201602
			GROUP BY
				lz_code
		) AS m
	WHERE
			k.sa_code = CAST (l.sa_code AS INTEGER)
		AND
			k.lz_code = m.lz_code
	ORDER BY
		lz

) AS n

;