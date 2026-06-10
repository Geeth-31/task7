-- Task 7
-- CREATE database task7;
-- USE task7;

-- to create tables
-- CREATE TABLE customers ( CustomerID INT PRIMARY KEY,CustomerName VARCHAR(50) );
-- CREATE TABLE orders ( OrderID INT PRIMARY KEY, CustomerID INT);

-- to insert customer details
-- INSERT INTO customers VALUES ( 1,"Raj"),(2,"Ram"),(3,"Shyam");

-- to insert order details
-- INSERT INTO orders VALUES (101,1),(102,2);

-- to display table values
-- SELECT * FROM customers  ;
-- SELECT * FROM orders ;

-- Question 1
-- Show customers who have placed orders along with their OrderID.
-- SELECT customers.customerID,customers.customerName,orders.OrderID FROM customers INNER JOIN  orders ON customers.customerID = orders.customerID;

-- Question 2
-- Show all customers and their OrderID, including customers who have not placed any orders.
-- SELECT customers.customerID,customers.customerName,orders.OrderID FROM customers LEFT JOIN orders ON customers.customerID = orders.customerID;

-- Question 3
-- Insert (103, 4) into the Orders table and find orders that do not have a matching customer
-- INSERT INTO orders VALUES (103,4);
-- SELECT orders.orderID ,orders.customerID FROM orders LEFT JOIN  customers ON customers.customerID = orders.customerID WHERE customers.customerID IS NULL;

-- Question 4
-- Show all customers and all orders, including unmatched records from both tables.
-- SELECT customers.customerID,customers.customerName,orders.OrderID FROM customers LEFT JOIN  orders ON customers.customerID= orders.customerID UNION SELECT  customers.customerID,customers.customerName,orders.OrderID FROM customers RIGHT JOIN orders ON customers.customerID = orders.customerID;

-- Question 5
-- Insert (104, 1) into the Orders table and display the total number of orders placed by each customer, including customers with 0 orders.
-- INSERT INTO orders VALUES (104,1);
-- SELECT customers.customerID,customers.customerName,COUNT(orders.OrderID) AS TotalOrders FROM customers LEFT JOIN  orders ON customers.customerID= orders.customerID GROUP BY customers.customerID,customers.customerName;