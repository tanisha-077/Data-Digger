
-- DATA DIGGER PROJECT

-- CREATE DATABASE DataDigger;

-- USE DataDigger;


-- CREATE TABLE Customers (
--     CustomerID INT PRIMARY KEY AUTO_INCREMENT,
--     Name VARCHAR(100) NOT NULL,
--     Email VARCHAR(100) UNIQUE,
--     Address VARCHAR(255)
-- );


-- CREATE TABLE Orders (
--     OrderID INT PRIMARY KEY AUTO_INCREMENT,
--     CustomerID INT,
--     OrderDate DATE,
--     TotalAmount DECIMAL(10,2),

--     FOREIGN KEY (CustomerID)
--     REFERENCES Customers(CustomerID)
-- );


-- CREATE TABLE Products (
--     ProductID INT PRIMARY KEY AUTO_INCREMENT,
--     ProductName VARCHAR(100) NOT NULL,
--     Price DECIMAL(10,2),
--     Stock INT
-- );


-- CREATE TABLE OrderDetails (
--     OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
--     OrderID INT,
--     ProductID INT,
--     Quantity INT,
--     SubTotal DECIMAL(10,2),

--     FOREIGN KEY (OrderID)
--     REFERENCES Orders(OrderID),

--     FOREIGN KEY (ProductID)
--     REFERENCES Products(ProductID)
-- );


-- INSERT INTO Customers (Name, Email, Address)
-- VALUES
-- ('Alice', 'alice@gmail.com', 'Rajkot'),
-- ('Meena', 'meena123@gmail.com', 'Ahmedabad'),
-- ('Rahul', 'rahul@gmail.com', 'Surat'),
-- ('Dev', 'dev22@gmail.com', 'Vadodara'),
-- ('Isha', 'isha77@gmail.com', 'Gandhinagar');


-- INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
-- VALUES
-- (1, '2026-10-01', 2500),
-- (2, '2026-10-05', 1800),
-- (3, '2026-10-10', 3500),
-- (1, '2026-10-15', 1200),
-- (4, '2026-11-01', 4500);

-- SELECT * FROM Orders;

-- INSERT INTO Products (ProductName, Price, Stock)
-- VALUES
-- ('Keyboard', 750, 20),
-- ('Mouse', 500, 30),
-- ('Headphones', 1200, 15),
-- ('Monitor', 1800, 10),
-- ('Printer', 2500, 0);

-- SELECT * FROM Products;


-- INSERT INTO OrderDetails
-- (OrderID, ProductID, Quantity, SubTotal)
-- VALUES
-- (1, 1, 2, 1500),
-- (1, 2, 2, 1000),
-- (2, 3, 1, 1200),
-- (2, 2, 1, 500),
-- (3, 4, 2, 3600),
-- (4, 1, 1, 750),
-- (4, 3, 1, 1200);

-- SELECT * FROM OrderDetails;


-- Customers Table Query

-- SELECT * FROM Customers;

-- UPDATE Customers
-- SET Address = 'Mumbai'
-- WHERE CustomerID = 2;

-- DELETE FROM Customers
-- WHERE CustomerID = 5;

-- SELECT * FROM Customers
-- WHERE Name = 'Alice';


-- Orders Table Query

-- SELECT * FROM Orders
-- WHERE CustomerID = 1;

-- UPDATE Orders
-- SET TotalAmount = 3000
-- WHERE OrderID = 2;

-- DELETE FROM Orders
-- WHERE OrderID = 5;

-- SELECT * FROM Orders
-- WHERE OrderDate BETWEEN
-- CURDATE() - INTERVAL 30 DAY AND CURDATE();

-- SELECT
-- MAX(TotalAmount) AS Highest_Amount,
-- MIN(TotalAmount) AS Lowest_Amount,
-- AVG(TotalAmount) AS Average_Amount
-- FROM Orders;

-- Products Table Query

-- SELECT * FROM Products
-- ORDER BY Price DESC;

-- UPDATE Products
-- SET Price = 850
-- WHERE ProductID = 1;

-- DELETE FROM Products
-- WHERE Stock = 0
-- AND ProductID = 5;

-- SELECT * FROM Products
-- WHERE Price BETWEEN 500 AND 2000;

-- SELECT MAX(Price) AS Highest_Price,
--        MIN(Price) AS Lowest_Price
-- FROM Products;

-- OrderDetails Table Query

-- SELECT * FROM OrderDetails
-- WHERE OrderID = 1;

-- SELECT SUM(SubTotal) AS Total_Revenue
-- FROM OrderDetails;

-- SELECT P.ProductID,P.ProductName, SUM(OD.Quantity) AS Total_Quantity
-- FROM Products P
-- JOIN OrderDetails OD
-- ON P.ProductID = OD.ProductID
-- GROUP BY P.ProductID, P.ProductName
-- ORDER BY Total_Quantity DESC
-- LIMIT 3;

-- SELECT P.ProductName, COUNT(OD.OrderDetailID) AS Times_Sold
-- FROM Products P
-- JOIN OrderDetails OD
-- ON P.ProductID = OD.ProductID
-- WHERE P.ProductID = 1
-- GROUP BY P.ProductID, P.ProductName;
