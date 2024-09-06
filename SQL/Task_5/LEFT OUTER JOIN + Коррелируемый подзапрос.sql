/*
Задание:
Сколько заказов оформил каждый продавец (ФИО) в Париж? Задачу решить двумя способами
База данных Northwind. Таблицы Orders и Employees
*/

-- LEFT OUTER JOIN:
SELECT CONCAT(FirstName, ' ', LastName) AS [Имя продавца], COUNT(O.OrderID) AS [Кол-во заказов в Париж, шт]
FROM Employees E LEFT JOIN Orders O ON E.EmployeeID = O.EmployeeID AND O.ShipCity = 'Paris'
GROUP BY E.EmployeeID, CONCAT(FirstName, ' ', LastName); 



-- Коррелируемый подзапрос:
SELECT CONCAT(FirstName, ' ', LastName) AS [Имя продавца], (SELECT COUNT(OrderID)
                                                            FROM Orders O       
															WHERE EmployeeID = E.EmployeeID AND
															O.ShipCity = 'Paris') AS [Кол-во заказов в Париж, шт]
FROM Employees E;


-- 1. К таблице Employees со списком сотрудников с помощью LEFT JOIN присоединяем таблицу заказов Orders
-- 2. Добавляем фильтр по городу Paris
-- 3. Группируем данные по EmploeeID и вычисляемому столбцу CONCAT(FirstName, ' ', LastName)
-- 4. В SELECT выводим информацию с именем продавцов и считаем кол-во заказов
-- 5. Решаем эту же задачу с помощью коррелируемого подзапроса и сверяем данные 