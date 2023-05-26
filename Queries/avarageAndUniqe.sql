
--get me avarage salary for it_prog
SELECT avg(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';


--get me unique job_id
select distinct JOB_ID from EMPLOYEES;

select JOB_ID,avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID;

select * from EMPLOYEES;

--get me  job_ids where theur avg salary is more than 5k
select JOB_ID,avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by  JOB_ID
having avg(SALARY)>5000;



