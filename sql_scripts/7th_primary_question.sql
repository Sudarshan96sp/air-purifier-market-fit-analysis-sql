-- total  EVs in India
select sum(value) as Total_EV from vahan
where fuel in (
"ELECTRIC(BOV)",
  "PURE EV",
  "PLUG-IN HYBRID EV",
  "STRONG HYBRID EV",
  "SOLAR",
  "FUEL CELL HYDROGEN");



-- Top 5 EV adoption state

WITH total_ev AS (
  SELECT 
    state, 
    SUM(value) AS total_EVs,
    RANK() OVER (ORDER BY SUM(value) DESC) AS ev_rank
  FROM vahan
  WHERE fuel IN (
    "ELECTRIC(BOV)",
    "PURE EV",
    "PLUG-IN HYBRID EV",
    "STRONG HYBRID EV",
    "SOLAR",
    "FUEL CELL HYDROGEN"
  )
  GROUP BY state
),
aqi_avg AS (
  SELECT state, ROUND(AVG(aqi_value), 0) AS avg_aqi
  FROM aqi
  GROUP BY state
)
SELECT 
  t.state,
  t.total_EVs,
  a.avg_aqi
FROM total_ev t
JOIN aqi_avg a ON t.state = a.state
ORDER BY total_EVs desc
limit 5;



-- bottom 5 EV adoption state

WITH total_ev AS (
  SELECT 
    state, 
    SUM(value) AS total_EVs,
    RANK() OVER (ORDER BY SUM(value) DESC) AS ev_rank
  FROM vahan
  WHERE fuel IN (
    "ELECTRIC(BOV)",
    "PURE EV",
    "PLUG-IN HYBRID EV",
    "STRONG HYBRID EV",
    "SOLAR",
    "FUEL CELL HYDROGEN"
  )
  GROUP BY state
),
aqi_avg AS (
  SELECT state, ROUND(AVG(aqi_value), 0) AS avg_aqi
  FROM aqi
  GROUP BY state
)
SELECT 
  t.state,
  t.total_EVs,
  a.avg_aqi
FROM total_ev t
JOIN aqi_avg a ON t.state = a.state
where t.state in ("Jharkhand","Tripura","Chandigarh","Himachal Pradesh","Manipur")
ORDER BY total_EVs desc
limit 5;