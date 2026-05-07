alter VIEW vw_Master_Sales_Analysis AS
SELECT 
    -- Orders Informations
    O.Order_id,
    O.Order_Date,
    O.Order_Status,
    O.Delivery_Status,
    o.Market,
    -- Customers Informations
    C.Customer_Fname + ' ' + C.Customer_Lname AS Full_Name,
    C.Customer_Segment,
    C.Customer_City,
    -- Products Informations
    P.Product_Name,
    CAT.Category_Name,
    D.Department_Name,
    -- Metrics
    OI.Order_Item_Quantity,
    o.Shipping_Mode,
    OI.Order_Item_Total AS Net_Sales,
    OI.Order_Profit_Per_Order AS Profit,
    OI.Order_Item_Discount AS Discount_Amount,
    cast ((OI.Order_Profit_Per_Order / nullif (OI.Order_Item_Total,0)) * 100 as decimal (10,2)) as Profit_Margin
    FROM Orders O
JOIN Customers C ON O.Customer_id = C.Customer_id
JOIN Order_Items OI ON O.Order_id = OI.Order_id
JOIN Products P ON OI.Product_Card_Id = P.Product_Card_id
JOIN Categories CAT ON P.Category_id = CAT.Category_id
JOIN Departments D ON CAT.Department_id = D.Department_id;