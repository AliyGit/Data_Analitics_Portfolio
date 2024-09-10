/*

Задание:
Показать 3 самых дорогих товара в каждой категории
База данных Northwind. Таблицы Categories и Products

*/


SELECT CategoryName, ProductName, UnitPrice
FROM Categories C CROSS APPLY (SELECT TOP (3) WITH TIES ProductName, UnitPrice
                               FROM Products
							   WHERE CategoryID = C.CategoryID
							   ORDER BY UnitPrice DESC) AS TOP_3



-- Задачу будем решать с помощью оператора CROSS APPLY:

-- 1. Свяжем таблицы Categories и Products с помощью CROSS APPLY
-- 2. Колонки из таблицы Products пропишем в виде подзапроса  
-- 3. В подзапросе ранжируем продукты по убыванию стоимости и выведем 3 самых дорогих продукта 
-- 4. CROSS APPLY для каждой категории выведет 3 самых дорогих продукта из списка Products