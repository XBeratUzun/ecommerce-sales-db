-- queries.sql

-- USE ecommerce_db;

-- -- 1. List all customers
-- SELECT * FROM customers;

-- -- -- 2. List all products with their prices
-- SELECT product_name, price FROM products;

-- -- 3. Find all completed orders
-- SELECT * FROM orders WHERE status = 'Completed';

-- -- 4. Show all orders with customer names
-- SELECT 
--     o.order_id,
--     CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
--     o.order_date,
--     o.status
-- FROM orders o
-- JOIN customers c ON o.customer_id = c.customer_id;

-- -- 5. Find top-selling products (by quantity sold)
-- SELECT 
--     p.product_name,
--     SUM(oi.quantity) AS total_quantity_sold
-- FROM order_items oi
-- JOIN products p ON oi.product_id = p.product_id
-- GROUP BY p.product_name
-- ORDER BY total_quantity_sold DESC;

-- -- 6. Calculate total revenue
-- SELECT 
--     SUM(amount) AS total_revenue
-- FROM payments;

-- -- 7. Monthly Sales Report (total orders per month)
-- SELECT 
--     DATE_FORMAT(order_date, '%Y-%m') AS month,
--     COUNT(order_id) AS total_orders
-- FROM orders
-- GROUP BY month
-- ORDER BY month;

-- 8. Find customers who spent more than $50
SELECT 
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_id
HAVING total_spent > 50;