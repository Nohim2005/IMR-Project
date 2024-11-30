USE SupermarketPOS;

CREATE TABLE Report (
    ReportID INT PRIMARY KEY IDENTITY(1,1),
    ReportType NVARCHAR(50) CHECK (ReportType IN ('Daily', 'Monthly')),
    ReportDate DATE NOT NULL,
    TotalSales DECIMAL(10, 2) NOT NULL,
    TotalDiscounts DECIMAL(10, 2),
    TopSellingProduct NVARCHAR(100)
);
