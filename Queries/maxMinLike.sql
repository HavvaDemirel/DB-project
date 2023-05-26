--get me info who is workinh as IT _PROG or SA_REP
select * from EMPLOYEES
WHERE JOB_ID in ('IT_PROG','SA_REP');

--hw many employee working as IT_PROG or SA_REP
SELECT count(*)from EMPLOYEES
WHERE JOB_ID in ('IT_PROG','SA_REP');

--how many employees making more than 8000
SELECT count(*) from EMPLOYEES
where SALARY>8000;

-- how many unique firstname we have
SELECT count(distinct FIRST_NAME) from EMPLOYEES;


--get me all employees information based on who is making more salary to low salary

SELECT * from EMPLOYEES
ORDER BY SALARY desc;


--get me all emp info by alphabetic basef on first name
SELECT * from EMPLOYEES
order by FIRST_NAME asc;

--default order is asc if you dont specify after coulumn name

--get me all emp whose firs name starts with c

SELECT * from EMPLOYEES
where FIRST_NAME like 'D%';

--get me 5 letter first names where the middle char is z
SELECT * from EMPLOYEES
where FIRST_NAME like '__z__';
--get me 5 letter first names where the middle char is z
SELECT * from EMPLOYEES
where FIRST_NAME like '_u%';

--find me min salary
SELECT min(SALARY)from EMPLOYEES;

--find me max salary
select max(SALARY)from EMPLOYEES;

select avg(SALARY)from EMPLOYEES;

--round
select Round(avg(SALARY),2)from EMPLOYEES;

SELECT Sp_name from SalesPerson where Sp_name like '%th';








