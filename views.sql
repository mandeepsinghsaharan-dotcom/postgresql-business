-- Total revenue per city
CREATE VIEW revenue_by_city AS
SELECT c.city, SUM(p.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.city;

-- Top selling products
CREATE VIEW top_products AS
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.name
ORDER BY total_sold DESC;
