/*Задача №1*/

SELECT * 
  FROM Table1 
  WHERE RequestID NOT IN (SELECT RequestID FROM Table2 WHERE RequestID IS NOT NULL);

/*Задача №2*/

SELECT CatalogID, (COUNT(CatalogID) * SUM(PositionPrice * PositionQuantity)) AS PurchasePrice 
  FROM table1 
  WHERE RequestID = 111 GROUP BY CatalogID;

/*Задача №3*/

SELECT CatalogID, SUM(PositionPrice * PositionQuantity) AS PurchasePrice 
  FROM table1 
  WHERE RequestID = 111 AND PositionPrice * PositionQuantity > 100000 GROUP BY CatalogID;
