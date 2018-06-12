--	1.	Get all customers and their addresses.
--	2.	Get all orders and their line items.
SELECT * FROM line_items
JOIN orders ON order_id = orders.id;
--	3.	Which warehouses have cheetos?
--	4.	Which warehouses have diet pepsi?
SELECT warehouse.warehouse FROM warehouse_product
JOIN warehouse ON warehouse_id = warehouse.id
JOIN products ON product_id = products.id
WHERE products.description = 'diet pepsi';
--	5.	Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
--	6.	How many customers do we have?
SELECT count(*) FROM customers;
--	7.	How many products do we carry?
--	8.	What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand) FROM warehouse_product
JOIN products ON product_id = products.id
WHERE products.description = 'diet pepsi';