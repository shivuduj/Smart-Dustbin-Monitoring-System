SELECT 
    bin_id,
    location,
    fill_level_percent,
    timestamp::timestamp_ntz AS recorded_at
FROM SMART_DUSTBIN.SMART_SCHEMA.iot_smart_bins
WHERE fill_level_percent IS NOT NULL
