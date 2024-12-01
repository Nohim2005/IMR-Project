USE SupermarketPOS;

CREATE TABLE CustomerAudit (
    AuditID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DeletedAt DATETIME
);
