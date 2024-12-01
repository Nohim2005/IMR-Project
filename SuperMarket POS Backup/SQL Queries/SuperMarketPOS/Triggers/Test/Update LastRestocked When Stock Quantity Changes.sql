USE SupermarketPOS;

UPDATE Stock
SET QuantityInStock = QuantityInStock + 10
WHERE ProductID = 1;
