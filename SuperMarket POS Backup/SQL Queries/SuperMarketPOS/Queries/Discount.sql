USE SupermarketPOS;

CREATE TABLE Discount (
    DiscountID INT PRIMARY KEY IDENTITY(1,1),
    DiscountName NVARCHAR(100),
    DiscountType NVARCHAR(20) CHECK (DiscountType IN ('Percentage', 'Flat')),
    DiscountValue DECIMAL(10, 2) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    ProductID INT FOREIGN KEY REFERENCES Stock(ProductID) ON DELETE CASCADE
);

