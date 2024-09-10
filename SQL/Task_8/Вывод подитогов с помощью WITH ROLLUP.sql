/*

�������:
�������� ���-�� ������� �� ���� ������� �� ���� ����� � ����������  
���� ������ Northwind. ������� Orders

*/

SELECT ShipCountry, YEAR(OrderDate) AS ���, COUNT(*) AS [���������� �������]
FROM Northwind.dbo.Orders
GROUP BY ShipCountry, YEAR(OrderDate) WITH ROLLUP
ORDER BY ShipCountry, YEAR(OrderDate);




-- ������ ����� ������ � ������� ��������� WITH ROLLUP:

-- 1. � ������� Orders ���������� ������ �� ������� � �����   
-- 2. � SELECT ����������� ������� ������/����/���-�� �������
-- 3. ��� ������ ��������� � GROUP BY ����������� WITH ROLLUP




