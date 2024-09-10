/*

Задание:
Показать заказы которые были оформлены весной 1997 года (4-мя способами) 
База данных Northwind. Таблица Orders

*/

--Первый вариант решения:
SELECT *
FROM Northwind.dbo.Orders
WHERE YEAR(OrderDate) = 1997 AND
              (MONTH(OrderDate) = 03 OR
               MONTH(OrderDate) = 04 OR
               MONTH(OrderDate) = 05);


--Второй вариант решения:
SELECT *
FROM Northwind.dbo.Orders
WHERE YEAR(OrderDate) = 1997 AND MONTH(OrderDate) in (3,4,5);


--Третий вариант решения:
SELECT *
FROM Northwind.dbo.Orders
WHERE YEAR(OrderDate) = 1997 AND (MONTH(OrderDate) > 2 AND MONTH(OrderDate) < 6);



--Четвертый вариант решения:
SELECT *
FROM Northwind.dbo.Orders
WHERE OrderDate >= '19970301'  AND OrderDate <= '19970531';


