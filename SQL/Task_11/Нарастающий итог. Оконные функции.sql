/*

Задание:
Вычислить сумму заказа за каждый день и показать нарастающий итог   
База данных Northwind. Таблицы Orders и Order Details

*/

WITH OrderSums AS (
                   SELECT O.OrderDate, SUM(UnitPrice*Quantity*(1-Discount)) AS [Сумма заказа]
                   FROM Orders O LEFT JOIN [Order Details] OD ON O.OrderID = OD.OrderID
                   GROUP BY O.OrderDate
                   )
SELECT OrderDate, [Сумма заказа], SUM([Сумма заказа]) OVER (ORDER BY OrderDate ASC
                                                            ROWS BETWEEN
								                            UNBOUNDED PRECEDING
								                            AND
								                            CURRENT ROW) AS [Нарастающий Итог]
FROM OrderSums;




-- Задачу будем решать с помощью оконной функции:

-- 1. Создадим временную таблицу OrderSums в которой проведем группировку и расчёт суммы заказов  
-- 2. С помощью оконной функции SUM() OVER() суммируем продажи нарастающим итогом 
