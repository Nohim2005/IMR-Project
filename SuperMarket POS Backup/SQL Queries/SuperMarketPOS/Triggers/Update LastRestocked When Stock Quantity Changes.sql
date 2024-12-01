SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Nohim>
-- Create date: <Create 12-01-2024,>
-- Description:	Automatically update the LastRestocked column in Stock table when a product's quantity is increased (restocked).>
-- =============================================
CREATE TRIGGER trg_UpdateLastRestocked
ON Stock
AFTER UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM INSERTED WHERE QuantityInStock > (SELECT QuantityInStock FROM DELETED))
    BEGIN
        UPDATE Stock
        SET LastRestocked = GETDATE()
        WHERE ProductID IN (SELECT ProductID FROM INSERTED);
    END
END;

GO
