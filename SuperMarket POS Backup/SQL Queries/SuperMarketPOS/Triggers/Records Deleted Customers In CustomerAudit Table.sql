-- =============================================
-- Author:		<Author,Nohim>
-- Create date: <Create 12/1/2024>
-- Description:	<Records Deleted Customers In CustomerAudit Table>
-- =============================================

CREATE TRIGGER trg_LogDeletedCustomers
ON Customer
AFTER DELETE
AS
BEGIN
    INSERT INTO CustomerAudit (CustomerID, FirstName, LastName, DeletedAt)
    SELECT CustomerID, FirstName, LastName, GETDATE()
    FROM DELETED;
END;
