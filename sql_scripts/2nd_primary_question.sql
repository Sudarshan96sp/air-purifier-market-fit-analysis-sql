-- TOP 2 Prominent Pollutants for each state

WITH top_prominent_pollutants AS (
    SELECT 
        state,
        prominent_pollutants, 
        COUNT(prominent_pollutants) AS p_count,
        DENSE_RANK() OVER (
            PARTITION BY state 
            ORDER BY COUNT(*) DESC
        ) AS ranking
    FROM 
        aqi
    WHERE 
        YEAR(date) >= 2022 
        AND state IN (
            "Andhra Pradesh", 
            "Kerala", 
            "Karnataka", 
            "Tamil Nadu", 
            "Telangana"
        )
    GROUP BY 
        state, 
        prominent_pollutants
)

SELECT 
    * 
FROM 
    top_prominent_pollutants
WHERE 
    ranking <= 2;


-- Bottom 2 Prominent Pollutants for each state

WITH bottom_prominent_pollutants AS (
    SELECT 
        state,
        prominent_pollutants, 
        COUNT(prominent_pollutants) AS p_count,
        DENSE_RANK() OVER (
            PARTITION BY state 
            ORDER BY COUNT(*) ASC
        ) AS ranking
    FROM 
        aqi
    WHERE 
        YEAR(date) >= 2022 
        AND state IN (
            "Andhra Pradesh", 
            "Kerala", 
            "Karnataka", 
            "Tamil Nadu", 
            "Telangana"
        )
    GROUP BY 
        state, 
        prominent_pollutants
)

SELECT 
    * 
FROM 
    bottom_prominent_pollutants
WHERE 
    ranking <= 2;



select distinct state from aqi;