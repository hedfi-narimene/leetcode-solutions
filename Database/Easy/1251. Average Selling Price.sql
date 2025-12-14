-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Prices (product_id int, start_date date, end_date date, price int);
/*
(product_id, start_date, end_date) is the primary key (combination of columns with unique values) for this table.
Each row of this table indicates the price of the product_id in the period from start_date to end_date.
For each product_id there will be no two overlapping periods. That means there will be no two intersecting periods for the same product_id.
*/

CREATE TABLEUnitsSold (product_id int, purchase_date date, units int);
/*
This table may contain duplicate rows.
Each row of this table indicates the date, units, and product_id of each product sold.
*/


-- ================================
-- Sample Input
-- ================================


insert into Prices (product_id, start_date, end_date, price) values ('1', '2019-02-17', '2019-02-28', '5')
insert into Prices (product_id, start_date, end_date, price) values ('1', '2019-03-01', '2019-03-22', '20')
insert into Prices (product_id, start_date, end_date, price) values ('2', '2019-02-01', '2019-02-20', '15')
insert into Prices (product_id, start_date, end_date, price) values ('2', '2019-02-21', '2019-03-31', '30')
Truncate table UnitsSold
insert into UnitsSold (product_id, purchase_date, units) values ('1', '2019-02-25', '100')
insert into UnitsSold (product_id, purchase_date, units) values ('1', '2019-03-01', '15')
insert into UnitsSold (product_id, purchase_date, units) values ('2', '2019-02-10', '200')
insert into UnitsSold (product_id, purchase_date, units) values ('2', '2019-03-22', '30')


-- ================================
--  Problem
-- ================================


/*
Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. If a product does not have any sold units, its average selling price is assumed to be 0.

Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


# Write your MySQL query statement below
SELECT
  pid.product_id,
  ROUND(
    CASE 
      WHEN SUM(u.units) IS NULL OR SUM(u.units) = 0 THEN 0
      ELSE SUM(u.units * p.price) / SUM(u.units)
    END
  , 2) AS average_price
FROM (
 
  SELECT product_id FROM Prices
  UNION
  SELECT product_id FROM UnitsSold
) AS pid
LEFT JOIN UnitsSold u
  ON u.product_id = pid.product_id
LEFT JOIN Prices p
  ON p.product_id = u.product_id
  AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY pid.product_id;



-- ================================
-- Explanation
-- ================================


/*
Average selling price = Total Price of Product / Number of products sold.
Average selling price for product 1 = ((100 * 5) + (15 * 20)) / 115 = 6.96
Average selling price for product 2 = ((200 * 15) + (30 * 30)) / 230 = 16.96
*/