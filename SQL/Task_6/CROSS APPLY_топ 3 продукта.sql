/*

�������:
�������� 3 ����� ������� ������ � ������ ���������
���� ������ Northwind. ������� Categories � Products

*/


SELECT CategoryName, ProductName, UnitPrice
FROM Categories C CROSS APPLY (SELECT TOP (3) WITH TIES ProductName, UnitPrice
                               FROM Products
							   WHERE CategoryID = C.CategoryID
							   ORDER BY UnitPrice DESC) AS TOP_3



-- ������ ����� ������ � ������� ��������� CROSS APPLY:

-- 1. ������ ������� Categories � Products � ������� CROSS APPLY
-- 2. ������� �� ������� Products �������� � ���� ����������  
-- 3. � ���������� ��������� �������� �� �������� ��������� � ������� 3 ����� ������� �������� 
-- 4. CROSS APPLY ��� ������ ��������� ������� 3 ����� ������� �������� �� ������ Products