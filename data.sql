INSERT INTO customers (name, email, phone, city) VALUES
('Amit Sharma', 'amit@example.com', '9876543210', 'Delhi'),
('Priya Singh', 'priya@example.com', '9123456780', 'Mumbai');

INSERT INTO products (name, category, price, stock) VALUES
('Laptop', 'Electronics', 60000, 10),
('Phone', 'Electronics', 30000, 20),
('Shoes', 'Fashion', 2000, 50);

INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2026-08-01', 'Completed'),
(2, '2026-08-02', 'Pending');

INSERT INTO order_items (order_id, product_id, quantity, subtotal) VALUES
(1, 1, 1, 60000),
(1, 3, 2, 4000),
(2, 2, 1, 30000);

INSERT INTO payments (order_id, payment_date, amount, method) VALUES
(1, '2026-08-01', 64000, 'Credit Card');

