USE northwind;
select * from customers;
SELECT *
FROM order_details
ORDER BY quantity ASC
LIMIT 1;


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders
order by customername;

select *
from products as p
left join order_details as od
on p.productid = od.productid
where od.orderid is null;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
where orders.orderid is null
ORDER BY Customers.CustomerName;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
where orders.orderid is null
ORDER BY Orders.OrderID;
 
SELECT COUNT(CustomerID), Country ,city
FROM Customers
GROUP BY Country ,city
order by Country;  

select count(distinct city) as numberofcities, Country
from customers
group by Country
order by count(distinct city) desc;

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;



-- join products to order_details table
select  p.productname, sum(od.quantity * p.price) as sales
from products as p
inner join order_details as od
on p.productid = od.productid
group by p.productname
order by sales desc;



SELECT 
    country,
    COUNT(*) AS num_customers
FROM 
    customers
GROUP BY 
    country
ORDER BY 
    num_customers DESC;



SELECT 
    c.CategoryName,
    p.ProductName,
    SUM(od.Quantity) AS TotalQuantitySold
FROM 
    order_details AS od
JOIN 
    products AS p ON od.ProductID = p.ProductID
JOIN 
    categories AS c ON p.CategoryID = c.CategoryID
GROUP BY 
    c.CategoryName, p.ProductName
ORDER BY 
    c.CategoryName, TotalQuantitySold DESC;



SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName,
    COUNT(o.OrderID) AS NumOrdersHandled
FROM 
    orders o
JOIN 
    employees e ON o.EmployeeID = e.EmployeeID
GROUP BY 
    e.FirstName, e.LastName
ORDER BY 
    NumOrdersHandled DESC;
    
SELECT 
    o.OrderID,
    o.OrderDate,
    c.CustomerName,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
JOIN 
    Employees e ON o.EmployeeID = e.EmployeeID;




DESCRIBE Products;
DESCRIBE Order_Details;

