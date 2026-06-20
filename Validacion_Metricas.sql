-- 1. Total Sales
SELECT 
    ROUND(SUM(amount)) AS total_sales 
FROM payment;

-- 2. Active Clients
SELECT 
    COUNT(*) AS active_clients_count 
FROM customer 
WHERE active = 1;

-- 3. Sales by Store (Percentage)
SELECT 
    s.store_id AS store, 
    concat(ROUND((COUNT(r.rental_id) / (SELECT COUNT(*) FROM rental)) * 100, 2), "%")  AS sales_percentage
FROM store AS s
JOIN inventory AS i 
    ON i.store_id = s.store_id
JOIN rental AS r 
    ON r.inventory_id = i.inventory_id
GROUP BY s.store_id;

-- 4. The Best Categories
SELECT 
    c.name AS category_name, 
    COUNT(r.rental_id) AS total_rentals
FROM category AS c 
JOIN film_category AS fc 
    ON fc.category_id = c.category_id 
JOIN film AS f 
    ON f.film_id = fc.film_id
JOIN inventory AS i 
    ON i.film_id = f.film_id
JOIN rental AS r 
    ON r.inventory_id = i.inventory_id
GROUP BY c.name 
ORDER BY total_rentals DESC;

-- 5. Monthly Income
SELECT 
    DATE_FORMAT(payment_date, '%Y-%M') AS month_year,
    SUM(amount) AS monthly_income
FROM payment
GROUP BY month_year, DATE_FORMAT(payment_date, '%Y-%m')
ORDER BY DATE_FORMAT(payment_date, '%Y-%m');

-- 6. Best DVDs
SELECT 
    f.title AS film_title,
    ROUND(SUM(p.amount)) AS total_income,
    COUNT(r.rental_id) AS rental_count
FROM film AS f
JOIN inventory AS i  
    ON f.film_id = i.film_id
JOIN rental AS r     
    ON i.inventory_id = r.inventory_id
JOIN payment AS p    
    ON r.rental_id = p.rental_id
GROUP BY f.title
ORDER BY total_income DESC
LIMIT 5;

-- 7. Sales per Week (by Day)
SELECT 
    DAYNAME(payment_date) AS day_of_week,
    COUNT(payment_id) AS total_sales_count 
FROM payment
GROUP BY day_of_week, WEEKDAY(payment_date)
ORDER BY WEEKDAY(payment_date);