-- Auto-update stock after purchase
CREATE OR REPLACE FUNCTION update_stock()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE products
    SET stock = stock - NEW.quantity
    WHERE product_id = NEW.product_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to call function after inserting into order_items
CREATE TRIGGER trg_update_stock
AFTER INSERT ON order_items
FOR EACH ROW
EXECUTE FUNCTION update_stock();
