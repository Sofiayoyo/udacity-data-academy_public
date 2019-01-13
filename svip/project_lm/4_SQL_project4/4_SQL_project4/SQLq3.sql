SELECT STRFTIME('%Y-%m',o.OrderDate) AS YearMonth, SUM(p.UnitPrice*od.Quantity) AS OrderBill
FROM Products p
JOIN OrderDetails od
ON p.ProductID = od.ProductID
JOIN Orders o
ON o.OrderID = od.OrderID
GROUP BY YearMonth
ORDER BY YearMonth;