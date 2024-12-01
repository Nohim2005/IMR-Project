SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Nohim>
-- Create date: <Create 12/1/2024>
-- Description:	<Ensure Stock Quantity Never Becomes Negative>
-- =============================================
CREATE TRIGGER trg_PreventNegativeStock
ON Stock
AFTER UPDATE, INSERT
AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED WHERE QuantityInStock < 0)
    BEGIN
        RAISERROR ('Stock quantity cannot be negative.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

GO
