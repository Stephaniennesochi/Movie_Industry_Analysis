-- Profit and ROI Analysis 

SELECT TOP 10 title,
       budget,
       revenue,
       revenue - budget AS profit,
       (revenue - budget) / budget AS roi,
       year
FROM dbo.movie_dataset
WHERE budget > 0 AND revenue > 0
ORDER BY profit DESC;