WITH currently_borrowed_books AS
(
    SELECT book_id, COUNT(1) AS current_borrowers
    FROM borrowing_records
    WHERE return_date IS NULL
    GROUP BY book_id
)
SELECT b.book_id, a.title, a.author, a.genre, a.publication_year, b.current_borrowers
FROM library_books AS a
INNER JOIN currently_borrowed_books AS b
    ON a.book_id = b.book_id
WHERE a.total_copies - b.current_borrowers = 0
ORDER BY b.current_borrowers DESC, a.title ASC;