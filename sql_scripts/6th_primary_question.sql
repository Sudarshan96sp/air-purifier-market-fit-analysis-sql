-- Step 1: Sum cases per disease-date-state
WITH disease_data AS (
    SELECT 
        disease_illness_name,
        state,
        reporting_date,
        SUM(cases) AS daily_cases
    FROM 
        idsp
    WHERE 
        reporting_date >= DATE_SUB('2025-04-30', INTERVAL 3 YEAR)
    GROUP BY 
        disease_illness_name, state, reporting_date
),

-- Step 2: Average AQI per state
aqi_state_avg AS (
    SELECT 
        state,
        ROUND(AVG(aqi_value), 0) AS avg_aqi
    FROM 
        aqi
    WHERE
        date >= DATE_SUB('2025-04-30', INTERVAL 3 YEAR)
    GROUP BY 
        state
),

-- Step 3: Total cases per disease per state
disease_totals AS (
    SELECT 
        disease_illness_name,
        state,
        SUM(daily_cases) AS total_cases
    FROM 
        disease_data
    GROUP BY 
        disease_illness_name, state
),

-- Step 4: Rank diseases per state
ranked_diseases AS (
    SELECT *,
           RANK() OVER (PARTITION BY state ORDER BY total_cases DESC) AS disease_rank
    FROM disease_totals
),

-- Step 5: Pivot top 2 diseases into separate columns
pivoted AS (
    SELECT 
        state,
        MAX(CASE WHEN disease_rank = 1 THEN disease_illness_name END) AS top_disease_1,
        MAX(CASE WHEN disease_rank = 2 THEN disease_illness_name END) AS top_disease_2
    FROM 
        ranked_diseases
    WHERE 
        disease_rank <= 2
    GROUP BY 
        state
)

-- Final Output: Join with AQI
SELECT 
    p.state,
    p.top_disease_1,
    p.top_disease_2,
    a.avg_aqi
FROM 
    pivoted p
JOIN 
    aqi_state_avg a ON p.state = a.state
ORDER BY 
    state;
