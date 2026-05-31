//JOIN//
Select *
FROM [SQL Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
FROM [SQL Tutorial].dbo.EmployeeDemographics
Full Outer Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
FROM [SQL Tutorial].dbo.EmployeeDemographics
Left Outer Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
FROM [SQL Tutorial].dbo.EmployeeDemographics
Right Outer Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select EmployeeDemographics.EmployeeID, FirstName, lastName, Jobtitle, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select EmployeeDemographics.EmployeeID, FirstName, lastName, Jobtitle, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
Left Outer Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select EmployeeDemographics.EmployeeID, FirstName, lastName, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
Order By Salary DESC

Select JobTitle, AVG(Salary) as 'Average Salary'
FROM [SQL Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where JobTitle = 'Salesman'
Group by JobTitle

//UNION//
Select *
From [SQL Tutorial].dbo.EmployeeDemographics
Union
Select *
From [SQL Tutorial].dbo.WareHouseEmployeeDemographics

Select *
From [SQL Tutorial].dbo.EmployeeDemographics
Union all
Select *
From [SQL Tutorial].dbo.WareHouseEmployeeDemographics
order by EmployeeID

Select EmployeeID, FirstName, Age
From [SQL Tutorial].dbo.EmployeeDemographics
UNION
Select EmployeeID, JobTitle, Salary
From [SQL Tutorial].dbo.EmployeeSalary

//CASE_STATEMENT//
Select FirstName, lastName, Age,
CASE
	When Age > 30 Then 'Old'
	Else 'Young'
END
from [SQL Tutorial].dbo.EmployeeDemographics
Where Age is Not Null

Select FirstName, lastName, Age,
CASE
	When Age > 30 Then 'Old'
	When Age Between 27 And 30 Then 'Young'
	Else 'Baby'
END
from [SQL Tutorial].dbo.EmployeeDemographics
Where Age is Not Null
Order by Age

Select FirstName, lastName, Age,
CASE
	When Age = 38 Then 'Stanley'
	When Age > 30 Then 'Old'
	Else 'Baby'
END
from [SQL Tutorial].dbo.EmployeeDemographics
Where Age is Not Null
Order by Age

Select FirstName, lastName, JobTitle, Salary,
CASE
	When JobTitle = 'Salesman' Then Salary + (Salary * .10)
	When JobTitle = 'Accountant' Then Salary + (Salary * .05)
	when JobTitle ='HR' Then Salary + (Salary * .0000010)
	ELSE Salary + (Salary * .03)
END As SalaryAfterRaise
from [SQL Tutorial].dbo.EmployeeDemographics
Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

//UPDATE_AND_DELETE_STATEMENT//
Select *
From [SQL Tutorial].dbo.EmployeeDemographics

Update [SQL Tutorial].dbo.EmployeeDemographics
set EmployeeID = 1012
Where  FirstName = 'Holly' And lastName = 'Flax'

Update [SQL Tutorial].dbo.EmployeeDemographics
set Age = 31, Gender = 'Female'
Where  FirstName = 'Holly' And lastName = 'Flax'

Delete from [SQL Tutorial].dbo.EmployeeDemographics
Where EmployeeID = 1005


