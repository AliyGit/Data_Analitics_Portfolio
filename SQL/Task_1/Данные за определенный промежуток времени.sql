/*

�������:
�������� ������ ������� ���� ��������� ������ 1997 ���� (4-�� ���������) 
���� ������ Northwind. ������� Orders

*/

--������ ������� �������:
SELECT *
FROM Northwind.dbo.Orders
WHERE YEAR(OrderDate) = 1997 AND
              (MONTH(OrderDate) = 03 OR
               MONTH(OrderDate) = 04 OR
               MONTH(OrderDate) = 05);


--������ ������� �������:
SELECT *
FROM Northwind.dbo.Orders
WHERE YEAR(OrderDate) = 1997 AND MONTH(OrderDate) in (3,4,5);


--������ ������� �������:
SELECT *
FROM Northwind.dbo.Orders
WHERE YEAR(OrderDate) = 1997 AND (MONTH(OrderDate) > 2 AND MONTH(OrderDate) < 6);



--��������� ������� �������:
SELECT *
FROM Northwind.dbo.Orders
WHERE OrderDate >= '19970301'  AND OrderDate <= '19970531';


