--TASK = find the higest14th salary
--interview question

--the max salary
select max(SALARY) from EMPLOYEES;

--info the max salary
select * from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES);

--select 14th max salary
select min (SALARY)
from (select distinct SALARY from EMPLOYEES
order by SALARY desc )
where ROWNUM <15;

--find the info about who is making maz 14th salary
select *
from EMPLOYEES
where SALARY = (select min (SALARY)
from (select distinct SALARY from EMPLOYEES
order by SALARY desc )
where ROWNUM <15);

