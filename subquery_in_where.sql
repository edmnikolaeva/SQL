-- Business task: Highest Average Rental Rate by Rating
-- Metric: AVG(rental_rate), AVG(film_length)
-- Description: Finds film categories with the highest average rental rate and their average duration
-- Grain: category level
-- Tables used: movie, category, film_category

SELECT c.name,
       AVG(length)
FROM category AS c
JOIN film_category AS fc ON c.category_id=fc.category_id
JOIN movie AS m ON fc.film_id=m.film_id
WHERE rating = (SELECT rating
                FROM movie
                GROUP BY rating
                ORDER BY AVG(rental_rate) DESC
                LIMIT 1)
GROUP BY c.name;
