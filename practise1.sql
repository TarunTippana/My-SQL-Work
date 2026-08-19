-- Q1. Write a query to find all orders with TotalAmount greater than $150, sorted from highest to lowest.
select * from orders where TotalAmount>150 order by TotalAmount desc;
-- Q2. List all customers who signed up in January 2024 or are from Boston. answer this 
select * from customers where (year(SignupDate)=2024 and monthname(SignupDate)='January') or ( city="Boston");
-- Q3. Write a query to count how many customers are in each Tier (Gold, Silver, Bronze).
select Tier,count(*) from customers group by Tier;
-- Q4. Find the minimum, maximum, and average TotalAmount from the Orders table.
select min(TotalAmount) as minimum, max(TotalAmount) as maximum, avg(TotalAmount) as average from orders;
-- Q5. Write a query to show the top 3 most expensive orders (by TotalAmount).
select * from orders order by TotalAmount desc limit 3;
-- Q6. List all unique product names from the OrderItems table.
select distinct(ProductName) from orderitems;
-- Q7. Find all orders placed in February 2024 that have a TotalAmount less than $100.
select * from orders where ((TotalAmount<100) and (month(OrderDate)=2) and year(OrderDate)=2024);
select month(orderdate) from orders;
select monthname(orderdate) from orders;
-- Q8. Write a query to show customer names and their cities, but only for customers whose names start with the letter 'A' or 'B'.
select Name,city from customers where (name like "A%") or (name like "B%");
-- Q9. Write a query to show each OrderID along with the Customer Name who placed it.
select orders.OrderID,customers.Name from customers join orders on customers.CustomerID=orders.customerID;
-- Q10. For each customer, show their Name and the total number of orders they have placed. Include customers with zero orders.

-- Q11. Write a query to show each ProductName and the total quantity sold across all orders.

-- Q12. Find customers who have placed more than 1 order. Show their Name and order count.

-- Q13. Write a query to calculate the total revenue generated per City. Show city name and total revenue.

-- Q14. For each ProductName, calculate the average quantity ordered per order.

-- Q15. Find customers who have spent more than $300 in total across all their orders. Show Name and total spent.

-- Q16. Write a query to show OrderID, CustomerName, and OrderDate for orders that include the product 'Laptop'.