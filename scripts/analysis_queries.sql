CREATE DATABASE food_delivery_db;
USE food_delivery_db;
CREATE TABLE food_delivery_orders (
    Order_ID VARCHAR(50) PRIMARY KEY,
    Customer_ID VARCHAR(50),
    Customer_Age INT,
    Customer_Gender VARCHAR(10),
    City VARCHAR(50),
    Area VARCHAR(50),
    Restaurant_ID VARCHAR(50),
    Restaurant_Name VARCHAR(100),
    Cuisine_Type VARCHAR(50),
    Order_Date DATE,
    Order_Time TIME,
    Delivery_Time_Min INT,
    Distance_km FLOAT,
    Order_Value FLOAT,
    Discount_Applied FLOAT,
    Final_Amount FLOAT,
    Payment_Mode VARCHAR(20),
    Order_Status VARCHAR(20),
    Cancellation_Reason VARCHAR(100),
    Delivery_Partner_ID VARCHAR(50),
    Delivery_Rating INT,
    Restaurant_Rating FLOAT,
    Order_Day VARCHAR(10),
    Peak_Hour TINYINT,
    Profit_Margin FLOAT
);
-- Total Orders
SELECT COUNT(Order_ID) AS Total_Orders
FROM food_delivery_orders;

-- Total Revenue
SELECT SUM(Final_Amount) AS Total_Revenue
FROM food_delivery_orders;

-- Average Order Value
SELECT AVG(Final_Amount) AS Avg_Order_Value
FROM food_delivery_orders;

-- Average Delivery Time
SELECT AVG(Delivery_Time_Min) AS Avg_Delivery_Time
FROM food_delivery_orders;

-- Cancellation Rate
SELECT 
COUNT(CASE WHEN Order_Status = 'Cancelled' THEN 1 END) * 100.0 / COUNT(*) 
AS Cancellation_Rate
FROM food_delivery_orders;

-- Average Delivery Rating
SELECT AVG(Delivery_Rating) AS Avg_Delivery_Rating
FROM food_delivery_orders;

-- Average Profit Margin
SELECT AVG(Profit_Margin) AS Avg_Profit_Margin
FROM food_delivery_orders;
-- Top spending customers
SELECT Customer_ID, SUM(Final_Amount) AS Total_Spend
FROM food_delivery_orders
GROUP BY Customer_ID
ORDER BY Total_Spend DESC;

-- Age group vs average order value
SELECT Customer_Age, AVG(Final_Amount) AS Avg_Order_Value
FROM food_delivery_orders
GROUP BY Customer_Age;
-- Monthly revenue trend
SELECT MONTH(Order_Date) AS Month, SUM(Final_Amount) AS Revenue
FROM food_delivery_orders
GROUP BY MONTH(Order_Date);

-- Discount impact on profit
SELECT Discount_Applied, AVG(Profit_Margin) AS Avg_Profit
FROM food_delivery_orders
GROUP BY Discount_Applied;
-- Average delivery time by city
SELECT City, AVG(Delivery_Time_Min) AS Avg_Delivery_Time
FROM food_delivery_orders
GROUP BY City;

-- Delivery time vs rating
SELECT Delivery_Time_Min, AVG(Delivery_Rating) AS Avg_Rating
FROM food_delivery_orders
GROUP BY Delivery_Time_Min;
-- Top-rated restaurants
SELECT Restaurant_Name, AVG(Restaurant_Rating) AS Avg_Rating
FROM food_delivery_orders
GROUP BY Restaurant_Name
ORDER BY Avg_Rating DESC;

-- Cancellation rate by restaurant
SELECT Restaurant_Name,
COUNT(CASE WHEN Order_Status = 'Cancelled' THEN 1 END) * 100.0 / COUNT(*) AS Cancellation_Rate
FROM food_delivery_orders
GROUP BY Restaurant_Name;
-- Peak hour demand
SELECT Peak_Hour, COUNT(*) AS Orders
FROM food_delivery_orders
GROUP BY Peak_Hour;

-- Payment mode preference
SELECT Payment_Mode, COUNT(*) AS Orders
FROM food_delivery_orders
GROUP BY Payment_Mode;

-- Cancellation reason analysis
SELECT Cancellation_Reason, COUNT(*) AS Count
FROM food_delivery_orders
GROUP BY Cancellation_Reason;
USE food_delivery_db;
SELECT COUNT(*) FROM food_delivery_orders;
-- Orders by payment mode
SELECT Payment_Mode, COUNT(*) AS Orders
FROM food_delivery_orders
GROUP BY Payment_Mode;
-- Peak hour demand
SELECT Peak_Hour, COUNT(*) AS Orders
FROM food_delivery_orders
GROUP BY Peak_Hour;



