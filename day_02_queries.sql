-- SQL Interview Preparation — Day 02
-- Dataset: Blinkit | Database/Table: blinkitdb
-- Topics: Aggregate Functions, GROUP BY, HAVING

USE blinkitdb;

-- Q1
SELECT ROUND(SUM(`Total Sales`), 2) AS total_sales
FROM blinkitdb;

-- Q2
SELECT ROUND(AVG(`Total Sales`), 2) AS average_sales
FROM blinkitdb;

-- Q3
SELECT MAX(`Total Sales`) AS highest_sales
FROM blinkitdb;

-- Q4
SELECT MIN(`Total Sales`) AS lowest_sales
FROM blinkitdb;

-- Q5
SELECT ROUND(AVG(`Rating`), 2) AS average_rating
FROM blinkitdb;

-- Q6
SELECT `Item Type`, ROUND(SUM(`Total Sales`), 2) AS total_sales
FROM blinkitdb
GROUP BY `Item Type`
ORDER BY total_sales DESC;

-- Q7
SELECT `Item Type`, ROUND(AVG(`Rating`), 2) AS average_rating
FROM blinkitdb
GROUP BY `Item Type`;

-- Q8
SELECT `Item Type`, COUNT(*) AS product_count
FROM blinkitdb
GROUP BY `Item Type`;

-- Q9
SELECT `Outlet Type`, ROUND(SUM(`Total Sales`), 2) AS total_sales
FROM blinkitdb
GROUP BY `Outlet Type`
ORDER BY total_sales DESC;

-- Q10
SELECT `Item Type`, ROUND(AVG(`Item Weight`), 2) AS average_item_weight
FROM blinkitdb
GROUP BY `Item Type`;

-- Q11
SELECT `Outlet Type`,
       ROUND(SUM(`Total Sales`), 2) AS total_sales,
       ROUND(AVG(`Total Sales`), 2) AS average_sales,
       MAX(`Total Sales`) AS maximum_sales,
       MIN(`Total Sales`) AS minimum_sales
FROM blinkitdb
GROUP BY `Outlet Type`;

-- Q12
SELECT `Item Fat Content`,
       COUNT(*) AS product_count,
       ROUND(SUM(`Total Sales`), 2) AS total_sales,
       ROUND(AVG(`Rating`), 2) AS average_rating
FROM blinkitdb
GROUP BY `Item Fat Content`;

-- Q13
SELECT `Outlet Location Type`,
       COUNT(*) AS product_count,
       ROUND(SUM(`Total Sales`), 2) AS total_sales,
       ROUND(AVG(`Rating`), 2) AS average_rating
FROM blinkitdb
GROUP BY `Outlet Location Type`
ORDER BY total_sales DESC;

-- Q14
SELECT `Outlet Type`,
       `Outlet Location Type`,
       COUNT(*) AS product_count,
       ROUND(SUM(`Total Sales`), 2) AS total_sales
FROM blinkitdb
GROUP BY `Outlet Type`, `Outlet Location Type`;

-- Q15
SELECT `Item Type`, ROUND(SUM(`Total Sales`), 2) AS total_sales
FROM blinkitdb
GROUP BY `Item Type`
ORDER BY total_sales DESC
LIMIT 5;

-- Q16
SELECT `Item Type`, ROUND(SUM(`Total Sales`), 2) AS total_sales
FROM blinkitdb
GROUP BY `Item Type`
HAVING SUM(`Total Sales`) > 1000000
ORDER BY total_sales DESC;

-- Q17
SELECT `Item Type`, COUNT(*) AS product_count
FROM blinkitdb
GROUP BY `Item Type`
HAVING COUNT(*) > 100
ORDER BY product_count DESC;

-- Q18
SELECT `Outlet Type`, ROUND(AVG(`Rating`), 2) AS average_rating
FROM blinkitdb
GROUP BY `Outlet Type`
HAVING AVG(`Rating`) > 4
ORDER BY average_rating DESC;

-- Q19
SELECT `Outlet Type`,
       ROUND(SUM(`Total Sales`), 2) AS total_sales,
       ROUND(AVG(`Total Sales`), 2) AS average_sales
FROM blinkitdb
GROUP BY `Outlet Type`
ORDER BY total_sales DESC
LIMIT 1;

-- Q20
SELECT `Item Type`,
       COUNT(*) AS product_count,
       ROUND(AVG(`Rating`), 2) AS average_rating,
       ROUND(SUM(`Total Sales`), 2) AS total_sales
FROM blinkitdb
GROUP BY `Item Type`
HAVING COUNT(*) >= 100
   AND AVG(`Rating`) >= 4
   AND SUM(`Total Sales`) > 1000000
ORDER BY total_sales DESC;
