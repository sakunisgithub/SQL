WITH books_with_at_least_five_reading_sessions AS
(
    SELECT book_id,
           COUNT(book_id) AS total_sessions, 
           SUM(CASE WHEN session_rating >= 4 THEN 1 ELSE 0 END) AS high_rating,
           SUM(CASE WHEN session_rating <= 2 THEN 1 ELSE 0 END) AS low_rating,
           MAX(session_rating) - MIN(session_rating) AS rating_spread
    FROM reading_sessions
    GROUP BY book_id
    HAVING COUNT(book_id) >= 5 AND high_rating >= 1 AND low_rating >= 1
)
SELECT *
FROM (SELECT a.book_id,
            b.title,
            b.author,
            b.genre,
            b.pages,
            a.rating_spread, 
            ROUND((a.high_rating + a.low_rating) * 1.0 / a.total_sessions, 2) AS polarization_score
        FROM books_with_at_least_five_reading_sessions AS a
        INNER JOIN books AS b
            ON a.book_id = b.book_id) AS t
WHERE polarization_score >= 0.6
ORDER BY polarization_score DESC, b.title DESC;