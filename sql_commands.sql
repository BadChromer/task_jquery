/*1. Написать SELECT, который покажет Записи в таблице Table1, которых нет в Table2. Таблицы
имеют связь по полю EntityID.*/

SELECT * 
  FROM Table1 
  WHERE RequestID NOT IN (SELECT RequestID FROM Table2 WHERE RequestID IS NOT NULL);

/*2. Написать запрос (SELECT), который по заявке № 111 посчитает сумму закупки, по каждому
каталогу.*/

SELECT CatalogID, (COUNT(CatalogID) * SUM(PositionPrice * PositionQuantity)) AS PurchasePrice 
  FROM table1 
  WHERE RequestID = 111 GROUP BY CatalogID;

/*3. Сделать доп. условие в задаче №2 показать только те каталоги заявки №111, где сумма закупки
по каталогу более 100 000. Условие – только 1 команда SELECT и без использования вложенных
SELECT.*/

SELECT CatalogID, (COUNT(CatalogID) * SUM(PositionPrice * PositionQuantity)) AS PurchasePrice 
  FROM table1 
  WHERE RequestID = 111 AND PositionPrice * PositionQuantity > 100000 GROUP BY CatalogID;
