/*
Write an SQL query to transform this table into 1NF, ensuring that each row represents a single product for an order.
*/

SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION
SELECT 101, 'John Doe', 'Mouse'
UNION
SELECT 102, 'Jane Smith', 'Tablet'
UNION
SELECT 102, 'Jane Smith', 'Keyboard'
UNION
SELECT 102, 'Jane Smith', 'Mouse'
UNION
SELECT 103, 'Emily Clark', 'Phone';

/*
Write an SQL query to transform this table into 2NF by removing partial dependencies.
Ensure that each non-key column fully depends on the entire primary key.
*/

`Orders` table (OrderID → CustomerName)


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');


`OrderItems` table (OrderID + Product → Quantity)


CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product)
);

INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
