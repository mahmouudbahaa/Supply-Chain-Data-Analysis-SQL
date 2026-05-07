-- Data Insertion For The Tables

Insert Into Customers (
Customer_id,
Customer_Fname,
Customer_Lname,
Customer_Email,
Customer_Password,
Customer_Segment,
Customer_Street,
Customer_City,
Customer_State,
Customer_Country,
Customer_Zipcode,
Latitude,
Longitude
)
Select distinct
Customer_id,
Customer_Fname,
Customer_Lname,
Customer_Email,
Customer_Password,
Customer_Segment,
Customer_Street,
Customer_City,
Customer_State,
Customer_Country,
Customer_Zipcode,
Latitude,
Longitude
From DataCoSupplyChainDataset

Insert Into Departments (
Department_id,
Department_Name
)
Select Distinct
Department_id,
Department_Name
From DataCoSupplyChainDataset

Insert Into Orders (
Order_id,
Customer_id,
Order_Date,
Order_Status,
Order_City,
Order_State,
Order_Country,
Order_Region,
Market,
Shipping_Date,
Shipping_Mode,
Days_for_shopping_real,
Days_for_shopping_scheduled,
Delivery_Status,
Late_delivery_risk
)
Select Distinct
Order_id,
Customer_id,
order_date_DateOrders,
Order_Status,
Order_City,
Order_State,
Order_Country,
Order_Region,
Market,
shipping_date_DateOrders,
Shipping_Mode,
Days_for_shipping_real,
Days_for_shipment_scheduled,
Delivery_Status,
Late_delivery_risk
From DataCoSupplyChainDataset

Insert Into Categories (
Category_id,
Department_id,
Category_Name
)
Select Distinct
Category_id,
Department_id,
Category_Name
From DataCoSupplyChainDataset

Insert Into Products (
Product_Card_id,
Category_id,
Product_Name,
Product_Description,
Product_Price,
Product_Image,
Product_Status
)
Select Distinct
Product_Card_Id,
Category_id,
Product_Name,
Product_Description,
Product_Price,
Product_Image,
Product_Status
From DataCoSupplyChainDataset

Insert Into Order_Items (
Order_Item_Id,
Order_id,
Product_Card_Id,
Order_Item_Quantity,
Order_Item_Product_Price,
Order_Item_Discount,
Order_Item_Discount_Rate,
Order_Item_Total,
Order_Profit_Per_Order,
Order_Item_Profit_Ratio,
Sales_Per_Customer,
Benefit_Per_Order
)
Select Distinct 
Order_Item_Id,
Order_id,
Product_Card_Id,
Order_Item_Quantity,
Order_Item_Product_Price,
Order_Item_Discount,
Order_Item_Discount_Rate,
Order_Item_Total,
Order_Profit_Per_Order,
Order_Item_Profit_Ratio,
Sales_Per_Customer,
Benefit_Per_Order
From DataCoSupplyChainDataset