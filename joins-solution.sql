-- 1. Get all customers and their addresses.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;
-- 2. Get all orders and their line items.
-- 3. Which warehouses have cheetos?
SELECT warehouse FROM warehouse_product
JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'cheetos';
-- 4. Which warehouses have diet pepsi?
-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT first_name, COUNT(orders.address_id) FROM customers
JOIN addresses ON customers.id = addresses.customer_id
JOIN orders ON addresses.id = orders.address_id
WHERE addresses.customer_id = customers.id GROUP BY customers.first_name;
-- 6. How many customers do we have?
-- 7. How many products do we carry?
SELECT COUNT(products.id) FROM products;
-- 8. What is the total available on-hand quantity of diet pepsi?