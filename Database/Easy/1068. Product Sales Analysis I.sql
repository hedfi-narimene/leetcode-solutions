-- ================================
-- Tables Structure
-- ================================


CREATE TABLE  Sales (sale_id int, product_id int, year int, quantity int, price int)
/*
(sale_id, year) is the primary key (combination of columns with unique values) of this table.
product_id is a foreign key (reference column) to Product table.
Each row of this table shows a sale on the product product_id in a certain year.
Note that the price is per unit.
*/

CREATE TABLE Product (product_id int, product_name varchar(10))
/*
product_id is the primary key (column with unique values) of this table.
Each row of this table indicates the product name of each product.
*/


-- ================================
-- Sample Input
-- ================================


insert into Sales (sale_id, product_id, year, quantity, price) values ('1', '100', '2008', '10', '5000')
insert into Sales (sale_id, product_id, year, quantity, price) values ('2', '100', '2009', '12', '5000')
insert into Sales (sale_id, product_id, year, quantity, price) values ('7', '200', '2011', '15', '9000')
Truncate table Product
insert into Product (product_id, product_name) values ('100', 'Nokia')
insert into Product (product_id, product_name) values ('200', 'Apple')
insert into Product (product_id, product_name) values ('300', 'Samsung'


-- ================================
--  Problem
-- ================================


/*
Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

Return the resulting table in any order.
*/


-- ================================
-- Solution
-- ================================


select b.product_name , a.year , a.price
from Sales a
left join Product b
using(product_id)


-- ================================
-- Explanation
-- ================================


/*
From sale_id = 1, we can conclude that Nokia was sold for 5000 in the year 2008.
From sale_id = 2, we can conclude that Nokia was sold for 5000 in the year 2009.
From sale_id = 7, we can conclude that Apple was sold for 9000 in the year 2011.
*/