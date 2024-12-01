USE SupermarketPOS;

CREATE TABLE Stock (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Category NVARCHAR(50),
    UnitPrice DECIMAL(10, 2) NOT NULL, 
    CostPrice DECIMAL(10, 2) NOT NULL, 
    QuantityInStock INT NOT NULL,
    ReorderLevel INT DEFAULT 10,
    Supplier NVARCHAR(100),
    LastRestocked DATE
);

