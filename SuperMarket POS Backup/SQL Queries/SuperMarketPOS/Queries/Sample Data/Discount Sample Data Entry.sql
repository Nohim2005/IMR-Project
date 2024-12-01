USE SupermarketPOS;

-- Percentage Discounts
INSERT INTO Discount (DiscountName, DiscountType, DiscountValue, StartDate, EndDate, ProductID)
VALUES 
('Festive Season Discount', 'Percentage', 10.00, '2024-12-01', '2024-12-31', 1), -- Milk
('New Year Offer', 'Percentage', 15.00, '2024-12-25', '2025-01-10', 2), -- Cheese
('Beverage Sale', 'Percentage', 5.00, '2024-12-01', '2024-12-15', 4); -- Orange Juice

-- Flat value Discounts
INSERT INTO Discount (DiscountName, DiscountType, DiscountValue, StartDate, EndDate, ProductID)
VALUES 
('Snack Time Special', 'Flat', 20.00, '2024-11-30', '2024-12-05',7), -- Potato Chips
('Household Essentials Offer', 'Flat', 50.00, '2024-12-01', '2024-12-15', 13), -- Dishwashing Liquid
('Grocery Bulk Discount', 'Flat', 100.00, '2024-12-01', '2024-12-10', 10); -- Rice

--Mixed
INSERT INTO Discount (DiscountName, DiscountType, DiscountValue, StartDate, EndDate, ProductID)
VALUES 
('Personal Care Bonanza', 'Percentage', 20.00, '2024-12-01', '2024-12-15', 15), -- Cleaning Spray
('Detergent Promotion', 'Flat', 10.00, '2024-11-30', '2024-12-05', 14); -- Detergent Powder