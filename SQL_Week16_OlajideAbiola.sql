select CustomerName as [Customer Name], Notes from KCC.dbo.Customers

select distinct CustomerName as [Customer Name]from KCC.dbo.Customers


select * from KCC.dbo.Customers

select top(3) * from KCC.dbo.Customers

select *
from KCC.dbo.Customers
where state = 'WA'
/*this returns all customer in WA state*/

select *
from KCC.dbo.Customers
where state <> 'WA'

select *
from KCC.dbo.Customers
where state != 'WA'

select *
from KCC.dbo.Customers
where state = 'WA' or state = 'NY' or state = 'UT'

select *
from KCC.dbo.Customers
where state in ('WA', 'NY', 'UT')

select *
from KCC.dbo.Customers
where state not in ('WA', 'NY', 'UT')

select *
from KCC.dbo.Customers
where CustomerName = 'Tres Delicious' AND Country = 'United States'

select *
from KCC.dbo.Customers
where CustomerName = 'Tres Delicious' AND Country = 'United States'
or Country = 'France'

select *
from KCC.dbo.Customers
where CustomerName like 'A%' AND (Country = 'United States'
or Country = 'France')

select *
from KCC.dbo.Customers
where CustomerName Not like 'A%' AND (Country = 'United States'
or Country = 'France')

SELECT TOP (1000) [OrderID]
      ,[OrderDate]
      ,[CustomerID]
      ,[OrderTotal]
  FROM [KCC].[dbo].[Orders]
  --Where OrderTotal <= 1000
    Where OrderTotal between 1000 and 2000

    Select OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone
From dbo.Orders o
inner Join dbo.Customers c on o.CustomerID = c.CustomerID

Select OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone
From dbo.Orders o
right outer Join dbo.Customers c on o.CustomerID = c.CustomerID

Select OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone
From dbo.Orders o
Left outer Join dbo.Customers c on o.CustomerID = c.CustomerID

Select OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone,
c.CustomerID
From dbo.Orders o
Left outer Join dbo.Customers c on o.CustomerID = c.CustomerID

Select OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone,
c.CustomerID
From dbo.Orders o
Left outer Join dbo.Customers c on o.CustomerID = c.CustomerID
order by OrderTotal desc

Select * from dbo.Orders
Where OrderDate >= '2/18/2022'

Select * from dbo.Orders
Where OrderDate >= Dateadd(Month,-1,getdate())

Select Count(*) from dbo.Orders
Where OrderDate >= Dateadd(Month,-1,getdate())

Select Sum(TotoalOrder) from dbo.Orders
Where OrderDate >= Dateadd(Month,-1,getdate())
Group by CustomerID

SELECT        Customers.CustomerName AS [Customer Name], Orders.OrderID, Orders.OrderDate, SUM(Orders.OrderTotal) AS Expr1
FROM            Customers INNER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID
WHERE        (Orders.OrderDate >= CONVERT(DATETIME, '2022-02-18 00:00:00', 102))
GROUP BY Customers.CustomerName, Orders.OrderID, Orders.OrderDate