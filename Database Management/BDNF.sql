--create table employer(emp_id int, emp_nationality varchar(20), emp_dept varchar(20), dept_type varchar(20), dept_no_of_emp int)
--insert into EMPLOYER values (1001,'Austrian','Production','D001',200);
--insert into EMPLOYER values (1001,'Austrian','Stores','D001',250);
--insert into EMPLOYER values (1002, 'American','Design','D134',100);
--insert into EMPLOYER values (1002, 'American','Purchasing','D134',600);
--select * from EMPLOYER

--create table emp_nationality as select distinct * from (select emp_id, emp_nationality from EMPLOYER);
--select * from EMP_NATIONALITY;

create table emp_dept as select distinct * from (select emp_dept,dept_type,dept_no_of_emp from EMPLOYER);
select * from EMP_DEPT;

create table emp_dept_mapping as select distinct * from (select emp_id,emp_dept from EMPLOYER);
select * from EMP_DEPT_MAPPING;