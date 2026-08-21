-- Total sales per product
SELECT p.name, SUM(oi.subtotal) AS total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.name;

-- Customer purchase history
SELECT c.name, o.order_id, o.order_date, SUM(oi.subtotal) AS order_total
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.name, o.order_id, o.order_date;

-- Revenue by city
SELECT c.city, SUM(p.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.city;

