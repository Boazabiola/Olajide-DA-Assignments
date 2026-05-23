/* Select statement*/

--SELECT *
--FROM EmployeeDemographics 

--SELECT FirstName
--FROM EmployeeDemographics

--SELECT FirstName, LastName
--FROM EmployeeDemographics

--SELECT Top 5 *
--FROM EmployeeDemographics

--SELECT Distinct(EmployeeID)
--FROM EmployeeDemographics

--SELECT Distinct(Gender)
--FROM EmployeeDemographics

--SELECT COUNT(lastName)
--FROM EmployeeDemographics

--SELECT COUNT(lastName) AS LastNameCount
--FROM EmployeeDemographics

--SELECT *
--FROM EmployeeSalary

--SELECT MAX(Salary)
--FROM EmployeeSalary

--SELECT Min(Salary)
--FROM EmployeeSalary

--SELECT AVG(Salary)
--FROM EmployeeSalary



/* WHere Statement*/

--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--WHERE FirstName = 'Jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName <> 'Jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE Age > 30

--SELECT *
--FROM EmployeeDemographics
--WHERE Age >=30

--SELECT *
--FROM EmployeeDemographics
--WHERE Age < 32

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 AND Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 OR Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE lastName LIKE 'S%'

--SELECT *
--FROM EmployeeDemographics
--WHERE lastName LIKE '%S%'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is NULL

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')



/* Group By, Order By */

--SELECT Gender
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, COUNT (Gender)
--FROM EmployeeDemographics
--GROUP BY Gender


--SELECT Gender, COUNT (Gender)
--FROM EmployeeDemographics
--Group By Gender

--SELECT Gender, Age, COUNT (Gender)
--FROM EmployeeDemographics
--GROUP BY Gender, Age

--SELECT Gender, COUNT (Gender)
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender

--SELECT Gender, COUNT (Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age, Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC