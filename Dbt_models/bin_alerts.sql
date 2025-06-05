SELECT 
    bin_id,
    location,
    recorded_at,
    fill_level_percent,
    CASE 
        WHEN fill_level_percent >= 80 THEN 'HIGH'
        WHEN fill_level_percent BETWEEN 50 AND 79 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS alert_level
FROM {{ ref('stg_iot_smart_bins') }}
