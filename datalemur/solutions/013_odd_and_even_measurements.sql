WITH ordered AS
  (SELECT 
    measurement_value
    , measurement_time
    , ROW_NUMBER() OVER (PARTITION BY DATE_TRUNC('DAY', measurement_time)
                        ORDER BY measurement_time) AS measurement_id
  FROM measurements)
, evens AS
  (SELECT 
    DATE_TRUNC('DAY', measurement_time) AS measurement_day
    , SUM(measurement_value) AS even_sum
  FROM ordered
  WHERE measurement_id % 2 = 0
  GROUP BY 1)
, odds AS
  (SELECT 
    DATE_TRUNC('DAY', measurement_time) AS measurement_day
    , SUM(measurement_value) AS odd_sum
  FROM ordered
  WHERE measurement_id % 2 <> 0
  GROUP BY 1)

SELECT 
  odds.measurement_day
  , odds.odd_sum
  , evens.even_sum
FROM odds LEFT JOIN evens ON odds.measurement_day = evens.measurement_day
ORDER BY 1 