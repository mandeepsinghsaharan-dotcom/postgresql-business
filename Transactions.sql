BEGIN;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, CURRENT_DATE, 'Pending');

INSERT INTO order_items (order_id, product_id, quantity, subtotal)
VALUES (currval('orders_order_id_seq'), 2, 1, 30000);

INSERT INTO payments (order_id, payment_date, amount, method)
VALUES (currval('orders_order_id_seq'), CURRENT_DATE, 30000, 'UPI');

COMMIT;
