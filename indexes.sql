-- Faster search by customer email
CREATE INDEX idx_customers_email ON customers(email);

-- Faster search by product category
CREATE INDEX idx_products_category ON products(category);

-- Faster join on orders
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
