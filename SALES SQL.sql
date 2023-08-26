-- Find out how many sales were recorded each week on different days of the week
SELECT week, day, count(*)
FROM SALES1
GROUP BY week, day
ORDER BY week, day;
-- We need to change salesperson's name Inga to Annette
UPDATE SALES1
SET salesperson = 'Annette'
WHERE salesperson = 'Inga';
-- Find out how many sales did Annette do
SELECT salesperson, COUNT(salesperson)
FROM sales1
WHERE salesperson = 'Annette';
-- Find the total sales amount by each person by day
SELECT salesperson, day, sum(salesamount) AS 'Sales Amount'
FROM SALES1
GROUP BY salesperson, day;
-- How much (sum) each person sold for the given period
SELECT salesperson, sum(salesamount) AS 'Sales Amount'
FROM SALES1
GROUP BY salesperson;
-- How much (sum) each person sold for the given period, including the number of sales per person, their average, lowest and highest sale amounts
SELECT salesperson,
sum(salesamount) AS 'Sales Amount',
count(salesamount) AS 'Num of Sales',
AVG(salesamount) AS 'Average of Sale',
MAX(salesamount) AS 'Highest Sale',
MIN(salesamount) AS 'Lowest Sale'
FROM SALES1
GROUP BY salesperson
ORDER BY sum(salesamount) DESC;
-- Find the total monetary sales amount achieved by each store
SELECT store, SUM(salesamount)
FROM SALES1
GROUP BY store;
-- Find the number of sales by each person if they did less than 3 sales for the past period
SELECT salesperson, COUNT(salesamount) AS 'Num of sales pp'
FROM SALES1
GROUP BY salesperson
HAVING count(salesamount) < 3;
-- Find the total amount of sales by month where combined total is less than £100
SELECT month, sum(salesamount) AS 'Total Sales'
FROM SALES1
GROUP BY month
HAVING sum(salesamount) < 100;