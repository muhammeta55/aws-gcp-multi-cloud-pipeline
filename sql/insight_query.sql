SELECT 
  Category, 
  COUNT(*) as Total_Orders,
  ROUND(SUM(Amount), 2) as Total_Revenue,
  ROUND(AVG(Amount), 2) as Avg_Order_Value
FROM `my-omni-project.amazon_sales_data.amazon_sales_gold`
WHERE Category IS NOT NULL
GROUP BY Category
ORDER BY Total_Revenue DESC;