---Automatically Apply Discount on Sales
	---automatically calculate and apply the correct discount for a product during a sale.

CREATE TRIGGER trg_ApplyDiscountOnSale
ON SalesDetails
AFTER INSERT
AS
BEGIN
    UPDATE SalesDetails
    SET DiscountApplied = 
        (SELECT TOP 1 DiscountValue
         FROM Discount
         WHERE Discount.ProductID = SalesDetails.ProductID
           AND GETDATE() BETWEEN Discount.StartDate AND Discount.EndDate),
        TotalPrice = QuantitySold * 
        (SellingPrice - (SellingPrice * 
            (SELECT TOP 1 DiscountValue
             FROM Discount
             WHERE Discount.ProductID = SalesDetails.ProductID
               AND GETDATE() BETWEEN Discount.StartDate AND Discount.EndDate) / 100.0))
    WHERE SaleDetailID IN (SELECT SaleDetailID FROM INSERTED);
END;
