use students;
drop table Departments;
create table Departments(Dept_ID int, Dept_Name varchar(25),Student_name varchar(25),Joining_date date);
select * from Departments;
desc Departments;
insert into Departments values(1,"Electrical","Sarthak","2023-04-08");
insert into Departments values(2,"Eletrical","chetna","2023-06-08");
insert into Departments values(3,"Mechanical","sahil","2023-09-08");
insert into Departments values(4,"computer","sayli","2023-07-08");
insert into Departments values(5,"Electrical","priyanka",null);

alter table Departments
add column city char(25) not null;       /* not null constraint */

alter table Departments
modify column city varchar(25) not null; 
insert into Departments values(1,"computer","chetana",null,"pune");
insert into Departments values(8,"computer","chetana",null,null); /*Error*/


alter table Departments
modify column city varchar(25) not null; /*not null constraints*/

alter table Departments
modify column Dept_ID int unique;    /*unique constraints*/

insert into Departments values(1,"Electrical","Sarthak",null);
insert into Departments values(9,"Electrical","Sarthak",null,"pune");

drop table if exists person;
create table person(Id int,lastname varchar(25) not null, firstname varchar(25) unique);
select * from person;
alter table person  
add column Age int check (Age>=18);    /*check constraint*/

insert into person values(2, "dhakate", "priyanka",23);
insert into person values(3, "gaurkar", "trupti",24);
insert into person values(4, "komal", "yashvantwar",22);

alter table person
modify column ID int primary key;

insert into person values(4, null,"chetna",12);


drop table if exists person;
create table person(ID int auto_increment primary key,lastname varchar(20) not null, firstname varchar(25) unique,age int,city varchar(20));
/*constraint Check_person check (age>=20 and city="pune"));*/
select * from person;
create table person(Id int auto_increment primary key,lastname varchar(20) not null, firstname varchar(25) unique, age int,city varchar(20));
drop table if exists person;
create table person(ID int auto_increment primary key,lastname varchar(20) not null,firstname varchar(25) unique,age int,city varchar(20));
insert into person values
(5,"dhakate","priyanka",20,"chandrapur"),
(6,"gonnade","harshal",18,"bradrawati"),
(9,"tanvi","nimje",24,null),
(10,"sami","hedau",26,"pune");
select * from person;


/*by default*/

use students;
show tables;
select * from person;
alter table person 
add column salary int default 1000;
select * from person;

/* index constraint is used to retrive data from database faster than any other way */
use students;
select * from person;
create index index_name
on person (id,firstname,lastname,age,city);
show indexes from person;

create index a1 
on person(firstname);
show indexes from person;


/* Autoincreament*/
use students;
create table person_datas(person_id int not null auto_increment,lastname varchar(20),firstname varchar(25),primary key(person_id));
select * from person_datas;
alter table person_datas
auto_increment=2;
insert into person_datas values
(34,"dhakate","priyanka"),
(35,"gaurkar","trupti");
select * from person_datas;
insert into person_datas values
(36,"sorte","siya");
select * from person_datas;



/* view */
select * from person_datas;
create view ABC as
select dept_id,student_name from departments
where dept_id=3;
select * from departments;









use ipcs;
select * from ipcs_data;





  