use classicmodels;
/*Question: List the largest single payment done by every customer in the year 2004, ordered by the transaction value(highest to lowest).*/

select * from customers;
select * from payments;
select customerNumber, MAX(amount) as largestPayment, count(customerNumber) as no_of_order from payments
where year(paymentDate)=2004
group by customerNumber 
order by largestPayment DESC;


/*Question: Show the total payments month by month for every year.*/
select year(paymentDate) as year,
month(paymentDate) as month,
round(sum(amount),1)  as totalPayments
from payments
group by year,month
order by year,month;

/*Question:For the above query, format the amount properly with a dollar symbol and comma separation(e.g. $26,267.62), and also show month as a string.*/

select year(paymentDate) as year,
date_format(paymentDate, "%b") as monthName,
concat("$", format(sum(amount),1)) as totalPayments
from payments
group by year, month(paymentDate), monthname
order by year, month(paymentDate);


create table demo(name char(25), age int);
insert into demo(name,age) values("chetana",26),("gauri",22);
select * from demo;
update demo set name="trupti",age=29
where name="trupti";
delete from demo where name="trupti";

