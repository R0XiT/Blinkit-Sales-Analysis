SELECT * FROM Blinkit_data

SELECT CAST(SUM(Sales)/1000000 AS DECIMAL(10,2)) AS Sales_Millions
FROM Blinkit_data

SELECT CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales FROM Blinkit_data

SELECT COUNT(*) AS No_of_Items FROM Blinkit_data

SELECT CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating FROM Blinkit_data 

SELECT Item_Fat_Content,
CAST(SUM(Sales)/1000 AS DECIMAL(10,2)) AS Sales_Thousands,
CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales,
COUNT(*) AS No_of_Items,
CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
FROM Blinkit_data
GROUP BY Item_Fat_Content
ORDER BY Sales_Thousands DESC

SELECT TOP 5 Item_Type,
CAST(SUM(Sales)/1000 AS DECIMAL(10,2)) AS Sales_Thousands,
CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales,
COUNT(*) AS No_of_Items,
CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
FROM Blinkit_data
GROUP BY Item_Type
ORDER BY Sales_Thousands DESC

SELECT Outlet_Location_Type,
       ISNULL([Low Fat], 0)AS Low_Fat,
       ISNULL([Regular], 0)AS Regular
FROM
(
  SELECT Outlet_Location_Type, Item_Fat_Content,
       CAST(SUM(Sales) AS DECIMAL(10,2))AS Sales
  FROM blinkit_data
  GROUP BY Outlet_Location_Type, Item_Fat_Content
)AS SourceTable
PIVOT
(
SUM(Sales)
FOR Item_Fat_Content IN ([Low Fat],[Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type;

SELECT Outlet_Establishment_Year, 
CAST(SUM(Sales) AS DECIMAL(10,2)) AS Sales
FROM Blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year ASC

SELECT 
    Outlet_Size,
    CAST(SUM(Sales) AS DECIMAL(10,2)) AS Sales,
    CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Sales DESC;

SELECT Outlet_Location_Type, 
CAST(SUM(Sales) AS DECIMAL(10,2)) AS Sales
FROM Blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Sales DESC

SELECT 
    Outlet_Type,
    CAST(SUM(Sales) AS DECIMAL(10,2)) AS Sales,
    CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage,
    CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales,
    COUNT(*) AS No_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Sales DESC;