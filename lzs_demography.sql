SELECT
	f.lz_code || ': ' || lz_name || ' (' || lz_abbrev || ')' AS lz,
	COUNT(f.sa_code) AS num_sas,
	ROUND (CAST (SUM(m_00_04) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_00_04,
	ROUND (CAST (SUM(m_05_09) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_05_09,
	ROUND (CAST (SUM(m_10_14) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_10_14,
	ROUND (CAST (SUM(m_15_19) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_15_19,
	ROUND (CAST (SUM(m_20_24) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_20_24,
	ROUND (CAST (SUM(m_25_29) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_25_29,
	ROUND (CAST (SUM(m_30_34) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_30_34,
	ROUND (CAST (SUM(m_35_39) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_35_39,
	ROUND (CAST (SUM(m_40_44) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_40_44,
	ROUND (CAST (SUM(m_45_49) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_45_49,
	ROUND (CAST (SUM(m_50_54) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_50_54,
	ROUND (CAST (SUM(m_55_59) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_55_59,
	ROUND (CAST (SUM(m_60_64) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_60_64,
	ROUND (CAST (SUM(m_65_69) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_65_69,
	ROUND (CAST (SUM(m_70_74) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_70_74,
	ROUND (CAST (SUM(m_75_79) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_75_79,
	ROUND (CAST (SUM(m_80_84) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_80_84,
	ROUND (CAST (SUM(m_85plus) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS "pc_m_85+",
	ROUND (CAST (SUM(f_00_04) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_00_04,
	ROUND (CAST (SUM(f_05_09) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_05_09,
	ROUND (CAST (SUM(f_10_14) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_10_14,
	ROUND (CAST (SUM(f_15_19) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_15_19,
	ROUND (CAST (SUM(f_20_24) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_20_24,
	ROUND (CAST (SUM(f_25_29) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_25_29,
	ROUND (CAST (SUM(f_30_34) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_30_34,
	ROUND (CAST (SUM(f_35_39) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_35_39,
	ROUND (CAST (SUM(f_40_44) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_40_44,
	ROUND (CAST (SUM(f_45_49) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_45_49,
	ROUND (CAST (SUM(f_50_54) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_50_54,
	ROUND (CAST (SUM(f_55_59) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_55_59,
	ROUND (CAST (SUM(f_60_64) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_60_64,
	ROUND (CAST (SUM(f_65_69) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_65_69,
	ROUND (CAST (SUM(f_70_74) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_70_74,
	ROUND (CAST (SUM(f_75_79) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_75_79,
	ROUND (CAST (SUM(f_80_84) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_80_84,
	ROUND (CAST (SUM(f_85plus) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS "pc_f_85+",
	SUM(total_m) + SUM(total_f) AS pop
--	SUM("male_0-12")/pop AS "pc_m_0-12"
FROM
	zaf.demog_sas AS f,
	zaf.tbl_temp_popage AS g,
	(SELECT
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
	ROUND (CAST (SUM(m_00_04) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_00_04,
	ROUND (CAST (SUM(m_05_09) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_05_09,
	ROUND (CAST (SUM(m_10_14) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_10_14,
	ROUND (CAST (SUM(m_15_19) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_15_19,
	ROUND (CAST (SUM(m_20_24) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_20_24,
	ROUND (CAST (SUM(m_25_29) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_25_29,
	ROUND (CAST (SUM(m_30_34) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_30_34,
	ROUND (CAST (SUM(m_35_39) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_35_39,
	ROUND (CAST (SUM(m_40_44) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_40_44,
	ROUND (CAST (SUM(m_45_49) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_45_49,
	ROUND (CAST (SUM(m_50_54) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_50_54,
	ROUND (CAST (SUM(m_55_59) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_55_59,
	ROUND (CAST (SUM(m_60_64) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_60_64,
	ROUND (CAST (SUM(m_65_69) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_65_69,
	ROUND (CAST (SUM(m_70_74) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_70_74,
	ROUND (CAST (SUM(m_75_79) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_75_79,
	ROUND (CAST (SUM(m_80_84) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_m_80_84,
	ROUND (CAST (SUM(m_85plus) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS "pc_m_85+",
	ROUND (CAST (SUM(f_00_04) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_00_04,
	ROUND (CAST (SUM(f_05_09) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_05_09,
	ROUND (CAST (SUM(f_10_14) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_10_14,
	ROUND (CAST (SUM(f_15_19) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_15_19,
	ROUND (CAST (SUM(f_20_24) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_20_24,
	ROUND (CAST (SUM(f_25_29) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_25_29,
	ROUND (CAST (SUM(f_30_34) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_30_34,
	ROUND (CAST (SUM(f_35_39) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_35_39,
	ROUND (CAST (SUM(f_40_44) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_40_44,
	ROUND (CAST (SUM(f_45_49) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_45_49,
	ROUND (CAST (SUM(f_50_54) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_50_54,
	ROUND (CAST (SUM(f_55_59) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_55_59,
	ROUND (CAST (SUM(f_60_64) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_60_64,
	ROUND (CAST (SUM(f_65_69) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_65_69,
	ROUND (CAST (SUM(f_70_74) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_70_74,
	ROUND (CAST (SUM(f_75_79) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_75_79,
	ROUND (CAST (SUM(f_80_84) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS pc_f_80_84,
	ROUND (CAST (SUM(f_85plus) AS NUMERIC) / CAST (SUM(total_m) + SUM(total_f) AS NUMERIC), 4) AS "pc_f_85+",
	SUM(total_m) + SUM(total_f) AS pop
FROM
	zaf.demog_sas AS k,
	zaf.tbl_temp_popage AS l,
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

;