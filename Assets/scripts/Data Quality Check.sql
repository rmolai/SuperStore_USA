--Data Quality Test

USE SuperStore_UK;

-- Missing Values Check
SELECT *
FROM [dbo].[Sample - Superstore]
WHERE Order_ID IS NULL
   OR Order_Date IS NULL
   OR Ship_Date IS NULL
   OR Customer_ID IS NULL
   OR Product_ID IS NULL;

-- Duplicate Rows Check
SELECT Order_ID, COUNT(*)
FROM [dbo].[Sample - Superstore]
GROUP BY Order_ID
HAVING COUNT(*) > 1;

-- Data Type and Range Validation
SELECT *
FROM [dbo].[Sample - Superstore]
WHERE Order_Date NOT BETWEEN '2000-01-01' AND '2023-12-31'
   OR Ship_Date NOT BETWEEN '2000-01-01' AND '2023-12-31'
   OR Sales < 0
   OR Quantity < 0
   OR Discount < 0
   OR Profit < 0;

-- Logical Consistency Check
SELECT *
FROM [dbo].[Sample - Superstore]
WHERE Order_Date > Ship_Date;

-- Outliers Detection
SELECT *
FROM [dbo].[Sample - Superstore]
WHERE Sales > 10000
   OR Profit > 5000;

-- Summary Statistics
SELECT 
    AVG(Sales) AS Avg_Sales,
    SUM(Sales) AS Total_Sales,
    AVG(Quantity) AS Avg_Quantity,
    SUM(Quantity) AS Total_Quantity,
    AVG(Discount) AS Avg_Discount,
    SUM(Discount) AS Total_Discount,
    AVG(Profit) AS Avg_Profit,
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sample - Superstore];

-- Consistent Data Formats Check
SELECT *
FROM [dbo].[Sample - Superstore]
WHERE Postal_Code NOT LIKE '[0-9]%';




