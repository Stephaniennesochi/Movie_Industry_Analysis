-- Revenue Vs Budget Analysis 


SELECT 
	title, budget, revenue
FROM 
	dbo.movie_dataset
WHERE 
	budget > 0 AND revenue > 0;
	

