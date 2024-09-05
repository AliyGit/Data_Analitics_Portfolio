/*

Задание:
Показать отток клиентов в 1998 году по сравнению с 1997 годом.
База данных Northwind. Таблицы Orders и Customers

*/



SELECT (
		SELECT ContactName
		FROM Northwind.dbo.Customers
		WHERE CustomerID = Orders.CustomerID
		) AS [Customer's Name]
FROM Northwind.dbo.Orders
WHERE YEAR(OrderDate) = 1997

EXCEPT

SELECT (
		SELECT ContactName
		FROM Northwind.dbo.Customers
		WHERE CustomerID = Orders.CustomerID
		) AS [Customer's Name]
FROM Northwind.dbo.Orders
WHERE YEAR(OrderDate) = 1998;




-- 1. Из табицы Orders фильтруем данные по 1997 году 
-- 2. С помощью вложенного запроса определяем имена покупателей, которые оформляли заказы 
-- 3. Такой же запрос прописываем для 1998 года 
-- 4. С помощью команды EXCEPT мы определяем кто делал заказ в 1997 году, но в 1998 не сделал ни одного заказа 