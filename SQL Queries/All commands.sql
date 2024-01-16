show databases;
/* DDL
1.create: use to create a new table in the database*/

use priyanka;
show tables;
select * from student;

/* 2.alter: to add the column, to rename the column, to drop the column*/

alter table student
rename column name to Name;
select * from student;

alter table student
add column Department varchar(25);
select * from student;

/* 3.drop: is used to delete both the structured and record stored in the table,table permanantly delete*/

alter table student
drop column Department;

drop table student;

/* DML
1.Insert: used to insert data into the row of a table*/
create table employee(emp_name char(25), salary int,mobile_no int);

/*DDL
2.alter
4]modify:- used to change the data types */
alter table employee
modify column mobile_no char(25);


insert into employee values("samiksha", 25000, "9854326783");
insert into employee values("komal", 30000, "7865431237");
select * from employee;

/*DDL
4.Truncate: use to delete all the rows from the table,but the table structure & its columns remains same.*/

truncate table employee;

/* DML
2. Update: update or modify the value of a column in the table*/

update employee set emp_name="chabu" where emp_name="komal";
update employee set salary=30000 where emp_name="komal";
 
/*3. delete: used to remove one or more rows from a table.*/

delete from employee where salary=25000;
delete from employee where mobile_no=89765;
insert into employee(emp_name, salary, mobile_no)values("priyanka", 45000, "9832456789"),("sanvi", 35000, "7865431278");
 
 
 select * from iris_csv;
