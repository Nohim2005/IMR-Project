CREATE OR ALTER TRIGGER Trigger_RewardLoyaltyPoints
ON Sales
AFTER INSERT
AS
BEGIN
    -- Award loyalty points for each sale based on quantity sold
    UPDATE Customer
    SET LoyaltyPoints = LoyaltyPoints + 
        (
            SELECT ISNULL(SUM(SalesDetails.QuantitySold) * 30 / 10, 0)
            FROM SalesDetails
            WHERE SalesDetails.SaleID = InsertedRow.SaleID
        )
    FROM Customer
    INNER JOIN INSERTED AS InsertedRow
    ON Customer.CustomerID = InsertedRow.CustomerID;
END;
