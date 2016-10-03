SELECT 	survey, COUNT(village_code)
FROM zaf.tbl_sampling_201602
GROUP BY survey

UNION SELECT 'total villages' AS survey, COUNT(village_code)
FROM zaf.tbl_sampling_201602

UNION SELECT 'total continuum', COUNT(village_code)
FROM zaf.tbl_sampling_201602 WHERE survey <> 'hea'

UNION SELECT 'total hea', COUNT(village_code)
FROM zaf.tbl_sampling_201602
WHERE survey <> 'continuum'

ORDER BY survey;
