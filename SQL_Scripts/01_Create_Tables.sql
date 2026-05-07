-- Adjustments 

Alter Table Customers 
Alter Column Customer_Zipcode varchar (255) null;

Alter Table Customers 
Alter Column Customer_Lname varchar (255) null;

-- Customers Table

Create Table Customers (
Customer_id int not null,
Customer_Fname varchar (255) not null,
Customer_Lname varchar (255) not null,
Customer_Email varchar (255) not null,
Customer_Password varchar (255) not null,
Customer_Segment varchar (255) not null,
Customer_Street varchar (255) not null,
Customer_City varchar (255) not null,
Customer_State varchar (255) not null,
Customer_Country varchar (255) not null,
Customer_Zipcode varchar (255) not null,
Latitude float,
Longitude float
primary key (customer_id)
)

-- Departments Table

Create Table Departments (
Department_id int not null,
Department_Name varchar (255)
Primary Key (Department_id)
)

-- Orders Table

Create Table Orders (
Order_id int not null,
Customer_id int not null,
Order_Date datetime2 not null,
Order_Status varchar (255) not null,
Order_City varchar (255) not null,
Order_State varchar (255) not null,
Order_Country varchar (255) not null,
Order_Region varchar (255) not null,
Market varchar (255) not null,
Shipping_Date datetime2 not null,
Shipping_Mode varchar (255) not null,
Days_for_shopping_real int not null,
Days_for_shopping_scheduled int not null,
Delivery_Status varchar (255) not null,
Late_delivery_risk int not null 
Primary Key (order_id)
Foreign Key (Customer_id) references Customers (Customer_id)
)

-- Categories Table

Create Table Categories (
Category_id int not null,
Department_id int not null,
Category_Name varchar (255) not null
Primary Key (Category_id)
Foreign Key (Department_id) references Departments (Department_id)
)

-- Products Table

Create Table Products (
Product_Card_id int not null,
Category_id int not null,
Product_Name varchar (255) not null,
Product_Description text,
Product_Price float,
Product_Image varchar (255) not null,
Product_Status int not null
Primary Key (Product_Card_id)
Foreign Key (Category_id) References Categories (Category_id)
)

-- Order Items

Create Table Order_Items (
Order_Item_Id int not null,
Order_id int not null,
Product_Card_Id int not null,
Order_Item_Quantity int not null,
Order_Item_Product_Price float not null,
Order_Item_Discount float not null,
Order_Item_Discount_Rate float not null,
Order_Item_Total float not null,
Order_Profit_Per_Order float not null,
Order_Item_Profit_Ratio float not null,
Sales_Per_Customer float not null,
Benefit_Per_Order float not null
Primary Key (Order_Item_Id)
Foreign Key (Order_id) References Orders (Order_id),
Foreign Key (Product_Card_Id) References Products (Product_Card_Id)
)