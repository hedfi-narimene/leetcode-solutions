-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Product (product_id int, product_name varchar(10), unit_price int);
/*
product_id is the primary key (column with unique values) of this table.
Each row of this table indicates the name and the price of each product.
*/

CREATE TABLE  Sales (seller_id int, product_id int, buyer_id int, sale_date date, quantity int, price int);
/*
This table can have duplicate rows.
product_id is a foreign key (reference column) to the Product table.
Each row of this table contains some information about one sale.
*/


-- ================================
-- Sample Input
-- ================================


insert into Product (product_id, product_name, unit_price) values ('1', 'S8', '1000')
insert into Product (product_id, product_name, unit_price) values ('2', 'G4', '800')
insert into Product (product_id, product_name, unit_price) values ('3', 'iPhone', '1400')

insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('1', '1', '1', '2019-01-21', '2', '2000')
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('1', '2', '2', '2019-02-17', '1', '800')
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('2', '2', '3', '2019-06-02', '1', '800')
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('3', '3', '4', '2019-05-13', '2', '2800')


-- ================================
--  Problem
-- ================================


/*
Write a solution to report the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


select p.product_id , p.product_name
from Product p
join Sales s
using (product_id)
group by p.product_id 
HAVING 
    MIN(s.sale_date) >= '2019-01-01'
    AND 
    MAX(s.sale_date) <= '2019-03-31';


-- ================================
-- Explanation
-- ================================


/*
The product with id 1 was only sold in the spring of 2019.
The product with id 2 was sold in the spring of 2019 but was also sold after the spring of 2019.
The product with id 3 was sold after spring 2019.
We return only product 1 as it is the product that was only sold in the spring of 2019.
*/