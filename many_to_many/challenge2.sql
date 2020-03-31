-- CHALLENGE 2 AVERAGE_RATE

SELECT title, AVG(rating) AS avg_rating
FROM series
JOIN reviews
    ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY rating;