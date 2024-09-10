/*

Задание:
С помощью функции оконной навигации показать изменение сумм продаж со смещением на 1 день вперед и на 1 день назад  
База данных Northwind. Таблицы Orders и Order Details

*/

SELECT O.OrderDate, SUM(UnitPrice*Quantity*(1-Discount)) AS [Сумма заказа],
       LAG(SUM(UnitPrice*Quantity*(1-Discount)), 1, 0) OVER (ORDER BY O.OrderDate) AS [За предыдущий день],
	   LEAD(SUM(UnitPrice*Quantity*(1-Discount)),1, 0) OVER (ORDER BY O.OrderDate) AS [За следующий день]
FROM Orders O LEFT JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY O.OrderDate;




-- Задачу будем решать с помощью функций оконных навигаций LAG и LEAD:

-- 1. Создадим связь между таблицами Orders и Order Details с помощью LEFT JOIN  
-- 2. Сгруппируем данные по колонке OrderDate 
-- 3. Вычислим сумму продаж за каждый день по формуле SUM(UnitPrice*Quantity*(1-Discount))
-- 4. С помощью LAG() создадим смещение суммы выручки на 1 день назад 
-- 5. С помощью LEAD() создадим смещение суммы выручки на 1 день вперед 