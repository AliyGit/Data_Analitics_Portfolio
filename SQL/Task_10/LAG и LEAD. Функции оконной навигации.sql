/*

�������:
� ������� ������� ������� ��������� �������� ��������� ���� ������ �� ��������� �� 1 ���� ������ � �� 1 ���� �����  
���� ������ Northwind. ������� Orders � Order Details

*/

SELECT O.OrderDate, SUM(UnitPrice*Quantity*(1-Discount)) AS [����� ������],
       LAG(SUM(UnitPrice*Quantity*(1-Discount)), 1, 0) OVER (ORDER BY O.OrderDate) AS [�� ���������� ����],
	   LEAD(SUM(UnitPrice*Quantity*(1-Discount)),1, 0) OVER (ORDER BY O.OrderDate) AS [�� ��������� ����]
FROM Orders O LEFT JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY O.OrderDate;




-- ������ ����� ������ � ������� ������� ������� ��������� LAG � LEAD:

-- 1. �������� ����� ����� ��������� Orders � Order Details � ������� LEFT JOIN  
-- 2. ����������� ������ �� ������� OrderDate 
-- 3. �������� ����� ������ �� ������ ���� �� ������� SUM(UnitPrice*Quantity*(1-Discount))
-- 4. � ������� LAG() �������� �������� ����� ������� �� 1 ���� ����� 
-- 5. � ������� LEAD() �������� �������� ����� ������� �� 1 ���� ������ 