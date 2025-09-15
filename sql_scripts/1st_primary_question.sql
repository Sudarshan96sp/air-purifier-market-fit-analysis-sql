-- TOP 5 aqi area

SELECT 
    area, ROUND(AVG(aqi_value), 0) AS avg_aqi
FROM
    aqi
WHERE
    date BETWEEN '2024-12-01' AND '2025-04-30'
GROUP BY area
ORDER BY avg_aqi DESC
LIMIT 5;




-- BOTTOM 5 aqi area

SELECT 
    area, ROUND(AVG(aqi_value), 0) AS avg_aqi
FROM
    aqi
WHERE
    date BETWEEN '2024-12-01' AND '2025-04-30'
GROUP BY area
ORDER BY avg_aqi
LIMIT 5;