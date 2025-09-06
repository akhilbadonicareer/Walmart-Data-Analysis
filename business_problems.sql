select * from walmart;

select distinct category, count(*) as no_of_cate from walmart 
group by 1 order by 2 desc;

-- BUSINESS PROBLEMS
-- Q1 FIND DIFFERENT PAYEMENT METHODS, NO OF TRANSACTION AND QUANTITY SOLD BY PAYMENT METHODS
select payment_method,
count(*),
SUM(quantity) from walmart group by 1;

-- Q2: Calculate the total quantity of items sold per payment method
SELECT 
    payment_method,
    SUM(quantity) AS no_qty_sold
FROM walmart
GROUP BY payment_method;
-- Q3: Determine the average, minimum, and maximum rating of categories for each city
SELECT 
    city,
    category,
    MIN(rating) AS min_rating,
    MAX(rating) AS max_rating,
    AVG(rating) AS avg_rating
FROM walmart
GROUP BY city, category;

-- Q4 calculate total profit for each category
select category,SUM(unit_price* quantity*profit_margin) as total_profit
from walmart group by category
order by total_profit desc;
