-- Order Status Count

Select 
order_status,
count(order_status) as order_count
from vw_Master_Sales_Analysis
group by Order_Status
order by order_count desc;

-- Top Categories By Total Quantity Sold

select 
Category_Name,
count(Order_Item_Quantity) as Total_Quantity
from vw_Master_Sales_Analysis
group by Category_Name
order by count(Order_Item_Quantity) desc;

-- Top Sales By Department

Select 
Department_name,
sum(Net_Sales) as Total_Sales
from vw_Master_Sales_Analysis
group by Department_Name
order by sum(Net_Sales) desc;



-- Top Sales By Market 

select distinct
Market,
sum(Net_Sales) as Total_Sales
from vw_Master_Sales_Analysis
group by Market
order by sum(Net_Sales) desc;

-- Top Profit By Market 

select distinct
Market,
sum(Profit) as Total_Profit
from vw_Master_Sales_Analysis
group by Market
order by sum(Profit) desc;

-- Top 10 Customers By Sales

Select distinct top 10 
Full_Name,
sum(Net_Sales) as Total_Sales
from vw_Master_Sales_Analysis
group by Full_Name 
order by sum(Net_Sales) desc;

-- Top Cities with late dilivery

SELECT TOP 10 
    Customer_City, 
    COUNT(Order_id) AS Late_Orders_Count
FROM vw_Master_Sales_Analysis
WHERE Delivery_Status = 'Late delivery'
GROUP BY Customer_City
ORDER BY Late_Orders_Count DESC;

-- Shipping Mode for The Expensive Products

select distinct
Product_Name,
Shipping_Mode,
avg(Profit_Margin) as avg_margin
FROM vw_Master_Sales_Analysis
group by Product_Name, Shipping_Mode
having avg(Profit_Margin) > 25
order by avg_margin desc;

-- Highest Discount By Department 

Select distinct
Department_Name,
avg(Discount_Amount) as Average_Discount,
avg(Profit_Margin) as Average_Profit_Margin
from vw_Master_Sales_Analysis
group by Department_Name 
order by avg(Profit_Margin) desc; 

-- Product with losses

select 
Product_Name,
sum(Order_Item_Quantity) as Total_Orders_Quantity,
sum(Profit) as Total_Profit
from vw_Master_Sales_Analysis
group by Product_Name
having sum(Profit) < 0
order by sum(Profit)


