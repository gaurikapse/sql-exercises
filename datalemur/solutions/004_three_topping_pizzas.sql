WITH price_list AS 
  (SELECT
    t1.topping_name topping1
    , t2.topping_name topping2
    , t3.topping_name topping3
    , t1.ingredient_cost + t2.ingredient_cost + t3.ingredient_cost AS total_cost
  FROM 
    pizza_toppings t1
    JOIN pizza_toppings t2 ON t1.topping_name < t2.topping_name
    JOIN pizza_toppings t3 ON t2.topping_name < t3.topping_name
  ORDER BY 1,2,3)
SELECT 
  CONCAT_WS(',', price_list.topping1, price_list.topping2, price_list.topping3) pizza
  , price_list.total_cost
FROM price_list
ORDER BY 2 DESC, 1