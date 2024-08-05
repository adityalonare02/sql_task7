select * from customer 

select * from sales 

select * from product 


	
1.report of all state sales,quantity,discount,profit sum,avg,min,max,count

select
    c.state,
    sum(s.sales) as total_sales,
    AVG(s.sales) as avg_sales,
    MIN(s.sales) as min_sales,
    MAX(s.sales) as max_sales,
    COUNT(s.sales) as count_sales,
    SUM(s.quantity) as total_quantity,
    AVG(s.quantity) as avg_quantity,
    MIN(s.quantity) as min_quantity,
    MAX(s.quantity) as max_quantity,
    COUNT(s.quantity) as count_quantity,
    SUM(s.discount) AS total_discount,
    AVG(s.discount) AS avg_discount,
    MIN(s.discount) AS min_discount,
    MAX(s.discount) AS max_discount,
    COUNT(s.discount) AS count_discount,
    SUM(s.profit) AS total_profit,
    AVG(s.profit) AS avg_profit,
    MIN(s.profit) AS min_profit,
    MAX(s.profit) AS max_profit,
    COUNT(s.profit) AS count_profit
from
    sales s
join
    customer c ON s.customer_id = c.customer_id
group by
    c.state
order by 
    c.state



	
2.data of all state and city's avg customer age

select
    state,
    city,
    AVG(age) AS avg_age
from
    customer
group by
    state, city
ORDER BY
    state, city



3.data of 2017 to 2018 with product name and sales per quantity 

SELECT
    s.order_date,
    p.product_name,
    s.sales,
    s.quantity,
    s.sales / s.quantity AS sales_per_quantity
FROM
    sales s
JOIN
    product p ON s.product_id = p.product_id
WHERE
    s.order_date >= '2017-01-01'
    AND s.order_date <= '2018-12-31'
ORDER BY
    s.order_date, p.product_name