

/*

Задание:
Сколько французских городов обслужил продавец Nancy Davolio в 1997 году?
База данных Northwind. Таблицы Orders и Employees

*/



SELECT COUNT (DISTINCT ShipCity) AS [Кол-во французских городов]
FROM Northwind.dbo.Orders
WHERE ShipCountry = 'France' AND
      YEAR(OrderDate) = 1997 AND
      EmployeeID = (
                    SELECT EmployeeID
                    FROM Northwind.dbo.Employees
                    WHERE LastName = 'Davolio' AND FirstName = 'Nancy'
				    );




-- 1. Из табицы Orders фильтруем данные по стране (France) и по году оформления заказа (1997 год)  
-- 2. С помощью вложенного автономного подзапроса определяем имя продавца из таблицы Customers
-- 3. Считаем количество уникальных французских городов и выводим на экран 
