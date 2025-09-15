-- AQI on weekdays and weekends by metro cities

with new_date as(select max(date) as max_date from aqi)
select area,
case
	when dayofweek(date) in (1,7) then "Weekend"
    else "Weekday"
end as day_type,
round(avg(aqi_value),0) as avg_aqi from aqi,new_date
where area in ("Delhi", "Mumbai", "Chennai", "Kolkata", "Bengaluru", "Hyderabad", "Ahmedabad", "Pune") and date >= new_date.max_date - interval 1 year
group by area,day_type
order by area,day_type;



-- Last 1 year avg aqi on weekday and wwekend
with new_date as(select max(date) as max_date from aqi)
select
case
	when dayofweek(date) in (1,7) then "Weekend"
    else "Weekday"
end as day_type,
round(avg(aqi_value),0) as avg_aqi from aqi,new_date
where date >= new_date.max_date - interval 1 year
group by day_type
order by day_type;