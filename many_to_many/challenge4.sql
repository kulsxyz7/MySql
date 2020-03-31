-- CHALLENGE 4

SELECT title AS unvreviewed_series
FROM series
LEFT JOIN reviews
    ON series.id = reviews.series_id
WHERE rating IS NULL;