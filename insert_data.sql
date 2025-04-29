-- insert_data.sql

USE ecommerce_db;

-- Insert Customers
INSERT INTO customers (first_name, last_name, email, phone, address, city, country)
VALUES 
('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Elm Street', 'New York', 'USA'),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321', '456 Oak Avenue', 'Los Angeles', 'USA'),
('Alice', 'Johnson', 'alice.johnson@example.com', '5551234567', '789 Pine Road', 'Chicago', 'USA'),
('Bob', 'Williams', 'bob.williams@example.com', '4449876543', '321 Maple Lane', 'Houston', 'USA');

-- Insert Products
INSERT INTO products (product_name, category, price, stock_quantity)
VALUES 
('Wireless Mouse', 'Electronics', 25.99, 100),
('Bluetooth Speaker', 'Electronics', 45.50, 60),
('Water Bottle', 'Home', 10.00, 200),
('Notebook', 'Stationery', 5.75, 500),
('Desk Lamp', 'Home', 30.25, 80);

-- Insert Orders
INSERT INTO orders (customer_id, order_date, status)
VALUES 
(1, '2025-04-01', 'Completed'),
(2, '2025-04-02', 'Pending'),
(3, '2025-04-03', 'Completed'),
(4, '2025-04-04', 'Completed');

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES 
(1, 1, 2, 25.99),
(1, 2, 1, 45.50),
(2, 3, 5, 10.00),
(3, 4, 10, 5.75),
(4, 5, 1, 30.25);

-- Insert Payments
INSERT INTO payments (order_id, amount, payment_date, payment_method)
VALUES 
(1, 97.48, '2025-04-01', 'Credit Card'),
(3, 57.50, '2025-04-03', 'PayPal'),
(4, 30.25, '2025-04-04', 'Debit Card');