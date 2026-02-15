-- Popular Genre 

-- Combine all genres into a single column for proper analysis
SELECT genre, 
       COUNT(*) AS movie_count,
       ROUND(AVG(revenue), 2)AS avg_revenue,
       ROUND(AVG(revenue - budget), 2) AS avg_profit
FROM
(
    SELECT genre_one AS genre, revenue, budget
    FROM dbo.movie_dataset
    WHERE genre_one IS NOT NULL

    UNION ALL

    SELECT genre_two AS genre, revenue, budget
    FROM dbo.movie_dataset
    WHERE genre_two IS NOT NULL

    UNION ALL

    SELECT genre_three AS genre, revenue, budget
    FROM dbo.movie_dataset
    WHERE genre_three IS NOT NULL

    UNION ALL

    SELECT genre_four AS genre, revenue, budget
    FROM dbo.movie_dataset
    WHERE genre_four IS NOT NULL

    UNION ALL

    SELECT genre_five AS genre, revenue, budget
    FROM dbo.movie_dataset
    WHERE genre_five IS NOT NULL

    UNION ALL

    SELECT genre_six AS genre, revenue, budget
    FROM dbo.movie_dataset
    WHERE genre_six IS NOT NULL
) AS AllGenres
GROUP BY genre
ORDER BY avg_revenue DESC;


  