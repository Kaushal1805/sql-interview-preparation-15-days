-- =========================================================
-- SQL Interview Preparation — Day 01
-- Dataset: Blinkit
-- Database: blinkitdb
-- Table: blinkitdb
-- Questions: 25
-- =========================================================

USE blinkitdb;

-- Q1. Display all rows and all columns.
SELECT *
FROM blinkitdb;

-- Q2. Display Item Identifier, Item Type, and Total Sales.
SELECT `Item Identifier`, `Item Type`, `Total Sales`
FROM blinkitdb;

-- Q3. Find total number of records.
SELECT COUNT(*) AS total_records
FROM blinkitdb;

-- Q4. Find unique Item Types.
SELECT DISTINCT `Item Type`
FROM blinkitdb;

-- Q5. Find unique Outlet Types.
SELECT DISTINCT `Outlet Type`
FROM blinkitdb;

-- Q6. Find products with Total Sales greater than 1000.
SELECT *
FROM blinkitdb
WHERE `Total Sales` > 1000;

-- Q7. Find products with Rating >= 4.
SELECT *
FROM blinkitdb
WHERE `Rating` >= 4;

-- Q8. Find Low Fat products.
SELECT *
FROM blinkitdb
WHERE `Item Fat Content` = 'Low Fat';

-- Q9. Find Fruits and Vegetables products.
SELECT *
FROM blinkitdb
WHERE `Item Type` = 'Fruits and Vegetables';

-- Q10. Find products with Item Weight > 10.
SELECT `Item Identifier`, `Item Type`, `Item Weight`
FROM blinkitdb
WHERE `Item Weight` > 10;

-- Q11. Total Sales > 1000 AND Rating >= 4.
SELECT `Item Type`, `Rating`, `Total Sales`
FROM blinkitdb
WHERE `Total Sales` > 1000
  AND `Rating` >= 4;

-- Q12. Item Type is Fruits and Vegetables OR Snack Foods.
SELECT `Item Identifier`, `Item Type`
FROM blinkitdb
WHERE `Item Type` IN ('Fruits and Vegetables', 'Snack Foods');

-- Q13. Outlet Location Type is Tier 1 OR Tier 2.
SELECT `Item Identifier`, `Outlet Location Type`
FROM blinkitdb
WHERE `Outlet Location Type` IN ('Tier 1', 'Tier 2');

-- Q14. Total Sales between 500 and 1500.
SELECT `Item Identifier`, `Total Sales`
FROM blinkitdb
WHERE `Total Sales` BETWEEN 500 AND 1500;

-- Q15. Low Fat, Total Sales > 1000, and Rating >= 4.
SELECT `Item Identifier`, `Item Type`, `Item Fat Content`,
       `Total Sales`, `Rating`
FROM blinkitdb
WHERE `Item Fat Content` = 'Low Fat'
  AND `Total Sales` > 1000
  AND `Rating` >= 4;

-- Q16. Item Identifier starts with FD.
SELECT `Item Identifier`, `Item Type`
FROM blinkitdb
WHERE `Item Identifier` LIKE 'FD%';

-- Q17. Item Type contains the word Snack.
SELECT `Item Identifier`, `Item Type`
FROM blinkitdb
WHERE `Item Type` LIKE '%Snack%';

-- Q18. Find records where Item Weight is NULL.
SELECT *
FROM blinkitdb
WHERE `Item Weight` IS NULL;

-- Q19. Find records where Outlet Size is NOT NULL.
SELECT `Item Identifier`, `Outlet Size`
FROM blinkitdb
WHERE `Outlet Size` IS NOT NULL;

-- Q20. Top 10 highest-selling products.
SELECT `Item Identifier`, `Item Type`, `Total Sales`
FROM blinkitdb
ORDER BY `Total Sales` DESC
LIMIT 10;

-- Q21. Top 5 highest-rated products.
SELECT `Item Identifier`, `Item Type`, `Rating`
FROM blinkitdb
ORDER BY `Rating` DESC
LIMIT 5;

-- Q22. Products ordered by Total Sales ascending.
SELECT `Item Identifier`, `Item Type`, `Total Sales`
FROM blinkitdb
ORDER BY `Total Sales` ASC;

-- Q23. Outlet Type ascending, then Total Sales descending.
SELECT `Outlet Type`, `Total Sales`
FROM blinkitdb
ORDER BY `Outlet Type` ASC,
         `Total Sales` DESC;

-- Q24. Top 10 products:
-- Rating >= 4, Total Sales > 1000, Low Fat.
SELECT `Item Identifier`, `Item Type`, `Item Fat Content`,
       `Rating`, `Total Sales`
FROM blinkitdb
WHERE `Rating` >= 4
  AND `Total Sales` > 1000
  AND `Item Fat Content` = 'Low Fat'
ORDER BY `Total Sales` DESC
LIMIT 10;

-- Q25. Top 10 highest-selling products:
-- Rating >= 4 and Total Sales > 1000.
SELECT `Item Identifier`,
       `Item Type`,
       `Item Fat Content`,
       `Total Sales`,
       `Rating`,
       `Outlet Type`,
       `Outlet Location Type`
FROM blinkitdb
WHERE `Rating` >= 4
  AND `Total Sales` > 1000
ORDER BY `Total Sales` DESC
LIMIT 10;
