
SELECT rating, COUNT(*) as num_films
FROM film
GROUP BY rating;


SELECT title
FROM film
WHERE (rating = 'G' OR rating = 'PG-13')
  AND length < 120
  AND rental_rate < 3.00
ORDER BY title;

SELECT * FROM customer WHERE customer_id = 1; 

UPDATE customer
SET first_name = 'Your first name', last_name = 'Your last name', email = 'your.email@example.com'
WHERE customer_id = 1;

UPDATE address SET address = 'Your address', city = 'Your city', postal_code = 'Your postal code'
WHERE address_id = (SELECT address_id FROM customer WHERE customer_id = 1); 