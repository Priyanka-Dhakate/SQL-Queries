use priyanka;
drop table emp_data;
drop table department;
create table emp_data(emp_id int primary key, name char(25), age int);
insert into emp_data values(101,"chetana",26),(102,"trupti",24),(103,"sayli",23),(104,"priyanka",22),(105,"sahil",24);
select * from emp_data;

create table department(dep_id int primary key, dept_name char(20), emp_id int,
foreign key(emp_id) references emp_data(emp_id));
insert into department values(1,"civil",102),(2,"IT",104);
insert into department values(3,"mechanical",103);
insert into department values(4,"civil",105);
select * from department;

select name,age,emp_id from emp_data where emp_id=101;
select department.dept_name,emp_data.name from emp_data
inner join department
on department.emp_id=emp_data.emp_id;


/*cascade:it joins the table */
create table emp_data(emp_id int primary key,name char(25), age int);
create table department(dep_id int primary key, dept_name char(20), emp_id int,
foreign key(emp_id) references emp_data(emp_id)
on delete cascade
on update cascade);
delete from emp_data where emp_id=102;
select * from emp_data;
select * from department;

update emp_data set emp_id=110 where emp_id=105;


insert into emp_data values(101,"chetna",26),(102,"trupti",24),(103,"sayli",23),(104,"priyanka",22),(105,"sahil",24);
select * from emp_data;


insert into department values(1,"civil",102),(2,"IT",104);
insert into department values(3,"mechanical",103);
insert into department values(4,"civil",105);
select * from department;
