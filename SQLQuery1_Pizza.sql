--SELECT *
--FROM ..pizza_sales

--SELECT SUM(total_price) AS total_revenue 
--FROM ..pizza_sales

--SELECT SUM(total_price)/ COUNT(DISTINCT order_id) AS Avg_Order_Value 
--From ..pizza_sales

SELECT *
FROM ..pizza_sales

--SELECT SUM(quantity) AS total_pizza_sold
--FROM ..pizza_sales

--SELECT COUNT(DISTINCT order_id) AS total_order_placed
--FROM ..pizza_sales

--SELECT CAST(SUM(quantity) AS DECIMAL (10,2))/ CAST (COUNT(DISTINCT order_id) AS DECIMAL (10,2)) AS Avg_Pizza_Order
--FROM ..pizza_sales

--SELECT DATENAME(DW,order_date) AS order_day, COUNT(DISTINCT order_id) AS total_order
--FROM ..pizza_sales
--GROUP BY DATENAME(DW,order_date)

--SELECT DATENAME(MONTH, order_date) AS month_date, COUNT (DISTINCT order_id) AS total_order
--FROM ..pizza_sales
--GROUP BY DATENAME(MONTH, order_date)
--ORDER BY total_order DESC

--SELECT pizza_category,SUM (total_price)*100/ (SELECT SUM(total_price) FROM ..pizza_sales) AS PCT
--FROM ..pizza_sales
--GROUP BY pizza_category

--SELECT pizza_category,SUM(total_price) AS total_sales, SUM (total_price)*100/ (SELECT SUM(total_price) FROM ..pizza_sales) AS PCT
--FROM ..pizza_sales
--GROUP BY pizza_category

--SELECT pizza_category,SUM(total_price) AS total_sales, SUM (total_price)*100/ (SELECT SUM(total_price) FROM ..pizza_sales WHERE DATEPART(QUARTER, order_date) = 1) AS PCT
--FROM ..pizza_sales
--GROUP BY pizza_category

--SELECT pizza_category,SUM(total_price) AS total_sales, SUM (total_price)*100/ (SELECT SUM(total_price) FROM ..pizza_sales WHERE MONTH(order_date) = 1) AS PCT
--FROM ..pizza_sales
--WHERE MONTH(order_date) = 1
--GROUP BY pizza_category

--SELECT pizza_size,SUM(total_price) AS total_sales, SUM (total_price)*100/ (SELECT SUM(total_price) FROM ..pizza_sales) AS PCT
--FROM ..pizza_sales
--GROUP BY pizza_size
--ORDER BY PCT DESC

--SELECT pizza_size,CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_sales, CAST(SUM (total_price)*100/ (SELECT SUM(total_price) FROM ..pizza_sales WHERE DATEPART(QUARTER, order_id) =1) AS DECIMAL(10,2)) AS PCT
--FROM ..pizza_sales
--WHERE DATEPART(QUARTER, order_id) =1
--GROUP BY pizza_size
--ORDER BY PCT DESC

--SELECT TOP 5 pizza_name, SUM(total_price) AS total_revenue
--FROM ..pizza_sales
--GROUP BY pizza_name
--ORDER BY total_revenue DESC

--SELECT TOP 5 pizza_name, SUM(total_price) AS total_revenue
--FROM ..pizza_sales
--GROUP BY pizza_name
--ORDER BY total_revenue ASC

--SELECT TOP 5 pizza_name, SUM(quantity) AS total_quantity
--FROM ..pizza_sales
--GROUP BY pizza_name
--ORDER BY total_quantity DESC

--SELECT TOP 5 pizza_name, SUM(quantity) AS total_quantity
--FROM ..pizza_sales
--GROUP BY pizza_name
--ORDER BY total_quantity ASC

--SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS total_orders
--FROM ..pizza_sales
--GROUP BY pizza_name
--ORDER BY total_orders DESC

SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS total_orders
FROM ..pizza_sales
GROUP BY pizza_name
ORDER BY total_orders ASC