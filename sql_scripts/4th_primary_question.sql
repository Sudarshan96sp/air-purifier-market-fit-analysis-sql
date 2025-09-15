-- monthly aqi avg in  top 10 states with high distinct areas

WITH high_state AS (
    SELECT 
        state,
        COUNT(DISTINCT area) AS c 
    FROM 
        aqi
    GROUP BY 
        state
    ORDER BY 
        c DESC
    LIMIT 10
)

SELECT
    DATE_FORMAT(a.date, '%M') AS month_name,
    ROUND(AVG(a.aqi_value), 0) AS avg_aqi_value
FROM
    aqi a
JOIN
    high_state h ON a.state = h.state
WHERE 
    a.state IN (SELECT state FROM high_state)
GROUP BY 
    month_name
ORDER BY 
    avg_aqi_value DESC;



-- Top 10 states with highest distinct areas
SELECT distinct state,count(distinct area) as total_monitoring_stations
from aqi
group by state
order by total_monitoring_stations desc
limit 10;



-- Top 3 worst aqi months by top 10 states with higherst distinct areas
WITH high_state AS (
    SELECT 
        state,
        COUNT(DISTINCT area) AS c 
    FROM 
        aqi
    GROUP BY 
        state
    ORDER BY 
        c DESC
    LIMIT 10
),
monthly_avg_aqi AS (
    SELECT
        a.state,
        MONTH(a.date) AS month,
        ROUND(AVG(a.aqi_value), 0) AS avg_aqi_value
    FROM 
        aqi a
    JOIN 
        high_state h ON a.state = h.state
    GROUP BY 
        a.state, MONTH(a.date)
),
ranked_months AS (
    SELECT 
        *,
        RANK() OVER (PARTITION BY state ORDER BY avg_aqi_value DESC) AS month_rank
    FROM 
        monthly_avg_aqi
)

SELECT 
    state,
    month,
    avg_aqi_value
FROM 
    ranked_months
WHERE 
    month_rank <= 3
ORDER BY 
    state, month_rank;
    
    