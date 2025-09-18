Q1
SELECT

    payment_date,
    SUM(amount) AS total_paid
FROM payments
GROUP BY payment_date
ORDER BY payment_date DESC
LIMIT 5;

Q2
SELECT
    customer_name,
    country,
    AVG(credit_limit) AS avg_credit_limit
FROM customers
WHERE country IN ('Kenya', 'Uganda', 'Tanzania')
GROUP BY customer_name, country
ORDER BY country, avg_credit_limit DESC;

Q3
-- Ordering the output to see which products brought the highest revenue
SELECT
    product_code,
    quantity_ordered,
    SUM(quantity_ordered * price_each) AS total_price
FROM orderdetails
GROUP BY product_code, quantity_ordered
ORDER BY total_price DESC;

Q4
-- Counting how many payments per check number with more than 1 payment
SELECT
    check_number,
    MAX(amount) AS highest_amount,
    COUNT(*) AS payment_count
FROM payments
GROUP BY check_number
HAVING COUNT(*) > 1
ORDER BY highest_amount DESC;





