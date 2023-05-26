--find the duplicate names in employee and how may times duplicated

select FIRST_NAME, count(*)
from EMPLOYEES
group by FIRST_NAME
having count (*)>1;





