/*TCL commands
1.commit: used to save the changes permenantly
2.rollback: used to undo one or more changes
3.savepoint: used to save the changes temporarily so that it can be rolled back to a particular point
-DML commands insert,delete,update this are transaction in a table:not permanant
-turn off Auto commit
*/
show databases;
create database studentval;
use studentval;
create table student_data(name char(30),id int);

insert into student_data values("trupti",1);
insert into student_data values("priyanka",2);

select * from student_data;
insert into student_data values("sayli",3);
start transaction;
update student_data set name="gauri" where id=2;
rollback;

/*commit*/
start transaction;
commit;
update student_data set name="trupti" where id=2;
rollback;

use students;
start transaction;
savepoint s1;
insert into student_data value("sahil",4);

start transaction;
savepoint s2;
update student_data set name="chetna" where id=2;

start transaction;
savepoint s3;
update student_data set name="priyanka" where id=3;

rollback to s1;
select * from student_data;

