/* set operators: used to join multiple tables with single query
UNION
UNION ALL
INTERSECT
MINUS
MySQL doesn't support Intersect,Minus.
Join is use to combine rows from two or more tables based on a related column between them.

UNION:
UNION is used to combine the result sets of two or more SELECT statements into a single result set.

UNION ALL:
UNION ALL is similar to UNION, but it does not remove duplicated rows.
*/

use students;
create table t1(id int, name char(20));
insert into t1 values(1,"chetana"),(2,"sahil"),(3,"trupti"),(4,"sayali");
select * from t1;

create table t2(id int, name char(20));
insert into t2 values(0,"priyanka"),(1,"sarthak"),(3, "trupti"),(4,"gauri");
select * from t2;

select id from t1 union select id from t2;
select id from t1 union all select id from t2;

select id from t1
where name="chetana"
union
select id from t2
where name="trupti";
