
/*
create table syntax:
create table TableName(
colName1 DataType Constraints,
colName2 DataType Constraints(optional)
colName3 DataType Constraints,
...
);
 */
/*creating a new table*/
 CREATE table ScrumTeam(
   Emp_ID   INTEGER PRIMARY KEY ,
   FirstName varchar(30) not null,
   LastName varchar(30),
   JobTitle varchar(20)
 );
select *from scrumTeam;

insert into ScrumTeam(Emp_ID, FirstName, LastName, JobTitle)
VALUES (1,'Severus','Snape','Tester');
insert into ScrumTeam VALUES (1,'Severus','Snape','Tester');
insert into ScrumTeam VALUES  (2,'Manila','Gunde','dev');
insert into ScrumTeam VALUES  (3,'hamly','suny','ba');
insert into ScrumTeam VALUES  (4,'Gursan','jamy','sm');
insert into ScrumTeam VALUES (5,'lily','Sonve','QA');
commit;

--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/
UPDATE ScrumTeam
Set JOBTITLE = 'Tester'
WHERE EMP_ID = 4;

DELETE from ScrumTeam
where EMP_ID = 3;

--saving changes
commit;

SELECT * from ScrumTeam;
--adding new column
ALTER TABLE ScrumTeam add salary INTEGER;
update ScrumTeam set salary = 100000 where EMP_ID = 1;
update ScrumTeam set salary = 150000 where EMP_ID = 2;
update ScrumTeam set salary = 160000 where EMP_ID = 4;
update ScrumTeam set salary = 180000 where EMP_ID = 5;
commit;

--rename the column
ALTER TABLE ScrumTeam rename column salary to annual_salary;


--delete or drop column
ALTER table ScrumTeam drop column ANNUAL_SALARY;

--how to change table name

ALTER table ScrumTeam rename to AgileTeam;

SELECT * from AGILETEAM;
commit;

--truncate, if we want to delete all data from the table, but still keep the table structure we use truncate
TRUNCATE TABLE AGILETEAM;

--if we want to delete the table and data together
drop table AGILETEAM;









