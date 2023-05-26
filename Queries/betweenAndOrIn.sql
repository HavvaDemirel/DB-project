SELECT * FROM COUNTRIES;
SELECT * FROM EMPLOYEES;

--i want to see firstname lastname and hone number of david
SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME = 'David';

--i want to see onlu david lee
SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME = 'David'and LAST_NAME = 'Lee';

--i want to get all info who is making more thank 7000 salary
SELECT * from EMPLOYEES
WHERE SALARY >= 7000;

-- i want to get all employee from is between 130 and 170
SELECT *
from EMPLOYEES
    WHERE EMPLOYEE_ID between 130 and 170;

-- i want to get employee which id is 135 176 154 129
SELECT *
from EMPLOYEES
WHERE EMPLOYEE_ID = 135 or EMPLOYEE_ID = 176 or EMPLOYEE_ID = 154 or EMPLOYEE_ID = 129;
--or

select *
from EMPLOYEES
    where EMPLOYEE_ID in(135,176,154,129);

--i want to sen email of who is making less than 4000
SELECT EMAIL from EMPLOYEES
where SALARY <4000;

--get me info who is working as it programmer or sa-rep
SELECT * from EMPLOYEES
where job_id='IT_PROG'or JOB_ID='SA_REP';

--get me first name last name saary who is making more than 500 and less than 10000
SELECT FIRST_NAME,LAST_NAME,SALARY
from EMPLOYEES
Where salary >= 5000 and SALARY<= 10000;
--or
SELECT FIRST_NAME,LAST_NAME,SALARY
from EMPLOYEES
Where salary between 5000 and  10000;

--get me city of where country_id IT,US,UK
SELECT CITY
from LOCATIONS
where COUNTRY_ID in('IT','US','UK');







