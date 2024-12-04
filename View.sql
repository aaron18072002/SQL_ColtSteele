SELECT title, released_year, genre, rating, first_name, last_name
FROM reviews AS R
INNER JOIN series AS S
ON R.serie_id = S.serie_id
INNER JOIN reviewers AS RER
ON R.reviewer_id = RER.reviewer_id;

CREATE VIEW full_reviews 
AS (SELECT title, released_year, genre, rating, first_name, last_name
	FROM reviews AS R
	INNER JOIN series AS S
	ON R.serie_id = S.serie_id
	INNER JOIN reviewers AS RER
	ON R.reviewer_id = RER.reviewer_id);
    
SELECT * FROM full_reviews;

SELECT title, AVG(rating) AS avg_rate, COUNT(rating) as total_rates
FROM full_reviews
GROUP BY title
HAVING COUNT(rating) >= 3;

SELECT 
    title, AVG(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;
