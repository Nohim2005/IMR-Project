USE SupermarketPOS;

INSERT INTO Stock (ProductName, Category, UnitPrice, CostPrice, QuantityInStock, ReorderLevel, Supplier, LastRestocked)
VALUES 
('Milk', 'Dairy', 120.00, 90.00, 50, 10, 'Fresh Dairy Supplies Co.', '2024-11-20'),
('Cheese', 'Dairy', 500.00, 400.00, 20, 5, 'Quality Cheese Ltd.', '2024-12-02'),
('Butter', 'Dairy', 350.00, 300.00, 15, 3, 'FarmFresh Butter Co.', '2024-12-05');

INSERT INTO Stock (ProductName, Category, UnitPrice, CostPrice, QuantityInStock, ReorderLevel, Supplier, LastRestocked)
VALUES 
('Orange Juice', 'Beverage', 250.00, 200.00, 40, 8, 'Sun Crush Beverages', '2024-11-18'),
('Cola', 'Beverage', 150.00, 120.00, 100, 20, 'Fizzy Drinks Co.', '2024-11-25'),
('Mineral Water', 'Beverage', 50.00, 40.00, 200, 30, 'Scan Water Distributors', '2024-12-10');

INSERT INTO Stock (ProductName, Category, UnitPrice, CostPrice, QuantityInStock, ReorderLevel, Supplier, LastRestocked)
VALUES 
('Potato Chips', 'Snacks', 100.00, 70.00, 80, 15, 'Ranchip Ltd.', '2024-11-19'),
('Chocolate Bar', 'Snacks', 200.00, 150.00, 60, 10, 'Kandos Co.', '2024-11-23'),
('Popcorn', 'Snacks', 120.00, 90.00, 50, 5, 'Pop Delight', '2024-12-05');

INSERT INTO Stock (ProductName, Category, UnitPrice, CostPrice, QuantityInStock, ReorderLevel, Supplier, LastRestocked)
VALUES 
('Rice (5kg)', 'Grocery', 750.00, 600.00, 25, 5, 'GrainSuppliers Pvt.', '2024-11-25'),
('Flour (1kg)', 'Grocery', 120.00, 90.00, 100, 15, 'Golden Flour Mills', '2024-11-28'),
('Sugar (1kg)', 'Grocery', 140.00, 100.00, 80, 10, 'Sweet Crystals Ltd.', '2024-12-03');

INSERT INTO Stock (ProductName, Category, UnitPrice, CostPrice, QuantityInStock, ReorderLevel, Supplier, LastRestocked)
VALUES 
('Dishwashing Liquid', 'Household', 250.00, 200.00, 40, 10, 'CleanUp Supplies Co.', '2024-11-26'),
('Detergent Powder', 'Household', 600.00, 500.00, 20, 5, 'Laundry Solutions Pvt.', '2024-12-03'),
('Cleaning Spray', 'Household', 400.00, 350.00, 30, 5, 'HomeCare Essentials', '2024-12-09');