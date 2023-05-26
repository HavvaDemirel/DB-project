select * from CUSTOMER;
select * from ADDRESS;

--joining to table based on the address_ID
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--------------------------------inner join---------------------------------
--to rename put a letter with a space
select FIRST_NAME,LAST_NAME,c.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER c join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

--------------------------------left outer join-----------------------------------------------
--join the table with null only adding left keyword
select FIRST_NAME,LAST_NAME,c.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER c left join ADDRESS a
 on c.ADDRESS_ID = a.ADDRESS_ID;

------------------------right outer join --------------------------------------
select FIRST_NAME,LAST_NAME,c.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER c right join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

------------------------full outer join---------------------------------
select FIRST_NAME,LAST_NAME,c.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER c full join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID