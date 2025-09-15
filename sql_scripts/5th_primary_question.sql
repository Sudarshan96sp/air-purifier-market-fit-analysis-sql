SELECT 
    area,air_quality_status, COUNT(DISTINCT date) AS "no. of days"
FROM
    aqi
WHERE
    area = "Bengaluru"
        AND date >= "2025-03-01"
GROUP BY air_quality_status;