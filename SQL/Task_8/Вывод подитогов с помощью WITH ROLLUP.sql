/*

Задание:
Показать кол-во заказов по всем странам по всем годам с подитогами  
База данных Northwind. Таблица Orders

*/

SELECT ShipCountry, YEAR(OrderDate) AS Год, COUNT(*) AS [Количество заказов]
FROM Northwind.dbo.Orders
GROUP BY ShipCountry, YEAR(OrderDate) WITH ROLLUP
ORDER BY ShipCountry, YEAR(OrderDate);




-- Задачу будем решать с помощью оператора WITH ROLLUP:

-- 1. В таблице Orders группируем данные по странам и годам   
-- 2. В SELECT прописываем столбцы Страны/Года/Кол-во заказов
-- 3. Для вывода подитогов в GROUP BY прописываем WITH ROLLUP




