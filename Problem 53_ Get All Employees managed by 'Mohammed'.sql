SELECT Employees.Name, Employees.ManagerID, Employees.Salary, managers.Name AS ManagerName
FROM     Employees LEFT OUTER JOIN
                  Employees AS managers ON Employees.ManagerID = managers.EmployeeID
where managers.Name ='Mohammed'