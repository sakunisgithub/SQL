-- Question 06 : Display the name of lead_1 actors, their count of movies and their total DVD sales. 

USE films;

SELECT Actor_name, movie_count, total_DVD_sales
FROM actor
INNER JOIN (
	SELECT lead_1, COUNT(movie.Movie_name) AS movie_count, SUM(sale) AS total_DVD_sales
	FROM movie
	INNER JOIN dvd
		ON movie.Movie_name = dvd.Movie_name
	GROUP BY lead_1
) AS dvd_sales_per_lead
	ON dvd_sales_per_lead.lead_1 = actor.Actor_ID;