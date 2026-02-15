-- Top-rated movies
-- This query gets the top 10 movies with vote_count > 1000


SELECT TOP 10 title, vote_count,vote_average
FROM dbo.movie_dataset
WHERE vote_count > 1000
ORDER BY vote_average DESC;