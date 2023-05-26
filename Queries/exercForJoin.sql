select * from EMPLOYEES;
select * from DEPARTMENTS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


select CUSTOMER_ID,FIRST_NAME,LAST_NAME,CUSTOMER.address_id,ADDRESS.address_id address,PHONE
from CUSTOMER left outer join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID is null;

select CUSTOMER_ID,FIRST_NAME,LAST_NAME,CUSTOMER.address_id,ADDRESS.address_id address,PHONE
from CUSTOMER full outer join ADDRESS
 on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID is null;


--get me firstname last name and department name for all employess

select * from EMPLOYEES;
select * from DEPARTMENTS;


select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
--this for who has no departmant
where e.DEPARTMENT_ID is null;


--get me first name last name and department name city for all employes
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,city
from EMPLOYEES e  join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

--get me first name last name and department name city country name for all employeee

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,city,c.COUNTRY_ID
from EMPLOYEES e  join DEPARTMENTS d
 on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID
join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;


--get me all employes first name lastname and their managers first name and last name
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID from EMPLOYEES;


select e1.employee_id,e1.first_name,e1.LAST_NAME,e1.MANAGER_ID,e2.employee_id,e2.first_name,e2.LAST_NAME
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID = e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;





































