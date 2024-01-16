use classicmodels;

select * from customers;
describe payments;
/*1.List the customers in the United States with a credit limit higher than \$1000.*/
select * from customers
where country="USA" and creditlimit>1000;

/*order by and limit*/
select * from customers
order by country desc;

select * from customers
order by creditlimit desc limit 2;

/*List the 5 most expensive products from the "Planes" product line*/
select * from products;
select * from products
where productLine="planes"
order by buyPrice desc limit 5;
select MSRP from products
where MSRP between 100 and 105;