/*Q1. Write the SQL query to get the maximum salary of an employee from a table
named employees.*/

 create database employees1;
 use employees1;
 create table employee_table(employee_name char(25), salary int);
 insert into employee_table values("A",24000),("C",34000),("D",55000),("E",75000),("F",21000),("G",40000),("H",50000);
 select * from employee_table;
 select max(salary) from employee_table;
 
 /*Q2.What is a Primary Key? Give one example.*/
 /*primary key:- primary key is a not null and unique
 create table employee_table(employee_name primary key, salary int);*/
 
 /*Q3.How will you change the datatype of a column?*/
 /*alter table employee_table
 modify salary  varchar(20);*/
 
 /*Q4.: Find all products with a price greater than $50.*/
 /*create table product(product_id int,product_name char(20), price int);
 select product_id, product_name
 from product where price>50;*/
 
 /*Q5.: List employees in descending order of salary.*/
 create table employee(employee_id int,name char(20),salary int);
 insert into employee values(1,"priya", 25000),(2,"tanvi",35000),(3,"pratik",26000),(4,"sami",27000);
 select * from employee;
 
 select employee_id,name, salary from employee order by salary desc;
 
 /*Q6.: Insert a new student with the name "Alice" and age 22.*/
 insert into students values(105,"alice",22);
 
 
 /*Q7.Write an SQL query to find the names of employees starting with “A”.*/
 create table students(student_id int, name char(20), age int);
 insert into students values(101, "gaytri", 23),(102,"mansi",21),(103,"akshay",24),(104,"pallavi",25);
 select * from students;
 
 select * from students where name like "a%";
 
 /*Q8. What are the types of joins in SQL?*/
 /*Their are types of joins in sql:-
 1.inner join
 2.left join
 3.right join
 4.cross join
 
 1.inner join:-inner join show same data in both the table.
 syntax:- select table1.column_name,table2.column_name from tablename1
		  inner join table2
          on table1.column_name=table2.column_name;
          
2.left join:-left join show the data in left table and same data from both the table.
syntax:- select table1.column_name,table2.column_name from tablename1
		  left join table2
          on table1.column_name=table2.column_name;
          
3.right join:-right join show the data in right table and same data from both the table.
syntax:- select table1.column_name,table2.column_name from tablename1
		  right join table2
          on table1.column_name=table2.column_name;
*/

/*Q9.: Retrieve the names of employees who earn more than the average salary in their respective departments.*/
drop table employees;
create table employees(id int, name char(20), salary int);
insert into employees values(1,"priya", 25000),(2,"tanvi",35000),(3,"pratik",26000),(4,"sami",27000);
select * from employees;

create table departments(department_id int, department_name char(20), id int);
insert into departments values(101, "civil", 1),(102,"computer",2),(103,"electronic",3),(104,"civil",4);
select * from departments;

select employees.name,departments.department_name from employees
inner join departments
on employees.id=departments.id
where employees.salary>(select avg(salary) from employees);




/*Q10.:Find the total order amount for each month of the year.*/

create table orders(order_id int,order_date char(25),total_amount int);
insert into  orders values(11,"24-03-2021",21000),(22,"25-07-2022",35000),(33,"21-06-2023",27000),(44,"25-07-2022",23000);
select * from orders;
select sum(total_amount) from orders
group by order_date;



/*Q11.: Insert a new customer with a unique customer ID and email address.*/
drop table customers;
create table customers(customer_id int unique,customer_name char(20),email char(25));
insert into customers values(1, "sanika","sanu134@gmail.com"),(2,"sanvi","san2353@gmail.com"),(3,"dipika","dipu3634@gmail.com");
select * from customers;
insert into customers values(4,"komal","yashwan435@gmail.com");


