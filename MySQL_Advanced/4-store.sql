-- Crea un trigger que disminuye la cantidad de un item en la tabla 'items'
-- cada vez que se agrega un nuevo pedido en la tabla 'orders'
-- Esto garantiza que el inventario se actualice automáticamente
DELIMITER $$

CREATE TRIGGER decrease_items_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END$$

DELIMITER ;
