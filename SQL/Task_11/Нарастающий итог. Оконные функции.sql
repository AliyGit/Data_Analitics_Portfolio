/*

�������:
��������� ����� ������ �� ������ ���� � �������� ����������� ����   
���� ������ Northwind. ������� Orders � Order Details

*/

WITH OrderSums AS (
                   SELECT O.OrderDate, SUM(UnitPrice*Quantity*(1-Discount)) AS [����� ������]
                   FROM Orders O LEFT JOIN [Order Details] OD ON O.OrderID = OD.OrderID
                   GROUP BY O.OrderDate
                   )
SELECT OrderDate, [����� ������], SUM([����� ������]) OVER (ORDER BY OrderDate ASC
                                                            ROWS BETWEEN
								                            UNBOUNDED PRECEDING
								                            AND
								                            CURRENT ROW) AS [����������� ����]
FROM OrderSums;




-- ������ ����� ������ � ������� ������� �������:

-- 1. �������� ��������� ������� OrderSums � ������� �������� ����������� � ������ ����� �������  
-- 2. � ������� ������� ������� SUM() OVER() ��������� ������� ����������� ������ 
