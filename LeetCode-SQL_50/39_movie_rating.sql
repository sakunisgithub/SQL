SELECT * FROM(
    SELECT Users.name AS results
    FROM MovieRating
    JOIN Users
        ON Users.user_id = MovieRating.user_id
    GROUP BY MovieRating.user_id
    ORDER BY COUNT(rating) DESC, Users.name
    LIMIT 1
) AS Q1

UNION ALL

SELECT * FROM(
    SELECT Movies.title AS results
    FROM MovieRating
    JOIN Movies
        ON Movies.movie_id = MovieRating.movie_id
    WHERE MONTH(created_at) = 2 AND YEAR(created_at) = 2020
    GROUP BY MovieRating.movie_id
    ORDER BY AVG(rating) DESC, Movies.title
    LIMIT 1
) AS Q2