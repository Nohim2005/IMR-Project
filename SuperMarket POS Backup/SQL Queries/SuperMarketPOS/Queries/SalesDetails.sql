USE SupermarketPOS;

CREATE TABLE SalesDetails (
    SaleDetailID INT PRIMARY KEY IDENTITY(1,1),
    SaleID INT FOREIGN KEY REFERENCES Sales(SaleID) ON DELETE CASCADE,
    ProductID INT FOREIGN KEY REFERENCES Stock(ProductID) ON DELETE CASCADE,
    QuantitySold INT NOT NULL CHECK (QuantitySold > 0),
    SellingPrice DECIMAL(10, 2) NOT NULL,
    DiscountApplied DECIMAL(10, 2) DEFAULT 0
);

