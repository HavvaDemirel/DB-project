--how we rename the column that we displayed
select FIRST_NAME as "Given_name",LAST_NAME as "Surname"
from EMPLOYEES;

-----------------concat the two column-------------------------
--text function string manipulations
--java first_name+" "+Last_name
--in sql concat is ||
select FIRST_NAME||' '||LAST_NAME as "Fullname"
from EMPLOYEES;


---------------------concat with string----------------------------------
--Task;
--add @gmail.com and name new column to fill email
select EMAIL||'@gmail.com' as "full_email"
       from EMPLOYEES;


--making all lowercase
select lower (EMAIL||'@gmail.com' )as "full_email"
from EMPLOYEES;

--length (value)
select first_name, length(first_name) as "lenght_name"
from employees
order by "lenght_name" desc ;


------------------------first letters ----------------------------------

--substr(col name,begin dex,numberplate)
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)as "initials"
from EMPLOYEES;

--------------------------combination all---------------------------------

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)as "initials",
FIRST_NAME|| ' '||LAST_NAME as "full_name",lower(EMAIL||'@gmail.com')as "full_email"
from EMPLOYEES;

--View------> we create a list under view package
CREATE VIEW  Emaillist_HD as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)as "initials",
                                 FIRST_NAME|| ' '||LAST_NAME as "full_name",lower(EMAIL||'@gmail.com')as "full_email"
                          from EMPLOYEES;

--we select from our own list
select "full_name"
from EMAILLIST_HD;




--to remove view

drop view Emaillist_HD;


----------------------------------------------------------------------------------
