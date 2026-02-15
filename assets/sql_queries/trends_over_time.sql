-- Trends Over Time
-- This query gets the average and total revenue for movies released each year


SELECT year,
       COUNT(*) AS movies_released,
       SUM(revenue) AS total_revenue,
       AVG(revenue) AS avg_revenue
FROM dbo.movie_dataset
GROUP BY year
ORDER BY year;
