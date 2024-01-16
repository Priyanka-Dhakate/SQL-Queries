use hr_analytics;
select * from countries;
select country_name,region_id from countries where region_id=2;

select * from employees;
select first_name,last_name,salary from employees where salary>15000;
select first_name,last_name,salary from employees where salary<15000;

/*use <> or != */
select first_name,last_name,salary,job_id from employees where job_id<>13;
select first_name,last_name,salary,job_id from employees where salary between 12000 and 15000;

select first_name,last_name,salary,job_id from employees where job_id in(2,1,15);

select * from countries where not country_name="Brazil" and not country_name="Australia";


