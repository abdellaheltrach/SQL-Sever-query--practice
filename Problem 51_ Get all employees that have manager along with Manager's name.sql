
SELECT Employees.Name, Employees.ManagerID, Managers.Name AS Expr1, Employees.Salary
FROM     Employees INNER JOIN
                  Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID



