--how to find employs information of who is making highest salary in the company
SELECT *from EMPLOYEES
order by SALARY desc;

-- get me the highest salary
SELECT MAx(SALARY)from EMPLOYEES;

--highest salary employee info
select * from EMPLOYEES
where SALARY = 24000;

--combination all these steps (sub-query) solution in one shot
select * from EMPLOYEES
where SALARY =(SELECT MAx(SALARY)from EMPLOYEES);
-----------------------------inner query-----------------------------------

--to find the second highest salary
--interview question
--first get the highest salary
SELECT MAx(SALARY)from EMPLOYEES
where SALARY<24000;

--then
SELECT MAx(SALARY)from EMPLOYEES
where SALARY<(SELECT MAx(SALARY)from EMPLOYEES);

--employee info who is getting second highest salary
select * from EMPLOYEES
where SALARY = (SELECT MAx(SALARY)from EMPLOYEES
where SALARY<(SELECT MAx(SALARY)from EMPLOYEES));

------------------------rownum----------------------------------------

--getting the first ten people
select * from EMPLOYEES
where ROWNUM<=10;

--order salary desc
select * from EMPLOYEES
order by SALARY desc ;

--show me the top 10 highest paid employees
select * from (select * from EMPLOYEES
order by SALARY desc)
where ROWNUM<=10;

--------------------------------------------------------------------


