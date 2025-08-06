SELECT
    CASE
        WHEN max_temp >= 90 THEN '90 or more'
        WHEN max_temp BETWEEN 88 AND 89 THEN '88-89'
        WHEN max_temp BETWEEN 86 AND 87 THEN '86-87'
        WHEN max_temp BETWEEN 84 AND 85 THEN '84-85'
        WHEN max_temp BETWEEN 82 AND 83 THEN '82-83'
        WHEN max_temp BETWEEN 80 AND 81 THEN '80-81'
        ELSE '79 or less'
    END AS temp_group,
    COUNT(*) AS frequency
FROM temps_collapsed
WHERE station_name = 'Waikiki'
  AND observation_type = 'TMAX'  -- only maximum daily temps
GROUP BY temp_group
ORDER BY frequency DESC;
