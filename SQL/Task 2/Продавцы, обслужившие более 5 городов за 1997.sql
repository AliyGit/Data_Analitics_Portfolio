/*

Задание:
Какие продавцы в 1997 году сумели обслужить больше 5 уникальных городов в одной стране? 
База данных Northwind. Таблицы: Orders, Employees

*/



SELECT DISTINCT(
		         SELECT CONCAT(FirstName, ' ', LastName)
		         FROM Northwind.dbo.Employees
		         WHERE EmployeeID = Orders.EmployeeID
		        ) AS [Имя Продавца]
FROM Northwind.dbo.Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY EmployeeID, ShipCountry
HAVING COUNT(DISTINCT ShipCity) > 5;



-- 1. В таблице Orders отфильтровываем строки по году заказа 1997 
-- 2. Группируем данные по 2-м столбцам: EmployeeID, ShipCountry
-- 3. Считаем количество уникальных городов для каждой из стран и с помощью HAVING оставляем строки где уникальных городов > 5
-- 4. В SELECT создаем вложенный запрос, чтобы показать Имя продавца, которое подтянется из таблицы Employees