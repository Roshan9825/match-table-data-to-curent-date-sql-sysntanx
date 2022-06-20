use emp

--table data

create table bday(
id int primary key not null identity,
name varchar(100),
age int,
departent varchar(100),
Employee_bod date) ;

select * from bday;


--get all tabale data using this tab
SELECT* FROM   bday WHERE cast(datediff(day, 0, Employee_bod) as datetime) = CAST(GETDATE() AS Date) ;

--SElect only name data wich maching the dob
SELECT name FROM   bday WHERE cast(datediff(day, 0, Employee_bod) as datetime) = CAST(GETDATE() AS Date) ;


--another one form get data from table match same date on bod and system
SELECT name FROM   bday WHERE DATEPART(mm,Employee_bod)=DATEPART(mm,getdate()) and  DATEPART(dd,Employee_bod)=DATEPART(dd,getdate())

