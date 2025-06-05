SELECT 
    location,
    COUNT(*) AS total_records,
    AVG(fill_level_percent) AS avg_fill_level,
    MAX(fill_level_percent) AS max_fill,
    MIN(fill_level_percent) AS min_fill
FROM {{ ref('stg_iot_smart_bins') }}
GROUP BY location
