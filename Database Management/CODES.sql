--make table
--CREATE TABLE Product(
--name CHAR(50) PRIMARY KEY,
--price DOUBLE,
--category VARCHAR(30)
--)

--make table
--CREATE TABLE Purchased(
--name CHAR(50),
--firstname CHAR(50),
--lastname CHAR(50),
--date DATE,
--PRIMARY KEY (name, firstname, lastname),
--FOREIGN KEY(name)
--	REFERENCE Product,
--FOREIGN KEY(firstname, lastname)
--	REFERENCE Person
--)

--Schema of table
--Product(Pname:string, Price, float, Caterogy: string, Manufacturer:string)


--<<Oracle Practice #1>>
--create table student (sid integer, name varchar(20), gpa float);
--insert into student values (123, 'Bob', 3.9);
--insert into student values (143, 'Jim', 4.2);
--select * from student;

--<<Oracle Practice #1>>
--create table Product (Pname varchar(20), Price float, Manufacturer varchar(20));
--insert into Product values('Gizmo', 19.99, 'GizmoWorks');
--insert into Product values('Powergizmo', 29.99, 'GizmoWorks');
--insert into Product values('SingleTouch', 149.99, 'Canon');
--insert into Product values('MultiTouch', 203.99, 'Hitachi');
--select * from Product;


--<<Oracle Practice #2>>
--select pack_id, speed, monthly_payment
--from ACDB_PACKAGES;

--select customer_id, first_name, last_name, main_phone_num, secondary_phone_num, pack_id
--from ACDB_CUSTOMERS;

--select first_name, last_name, pack_id
--from ACDB_CUSTOMERS
--where last_name = 'King';

--select first_name, last_name, pack_id, monthly_discount
--from ACDB_CUSTOMERS
--where MONTHLY_DISCOUNT < 10;


--<<Oracle Practice #3>>
--select pack_id, speed, strt_date, monthly_payment, monthly_payment * 12 as y_income
--from ACDB_PACKAGES;

--select last_name ||' '|| first_name as full_name, main_phone_num||', '||secondary_phone_num as contact_details --single quatation
--from ACDB_CUSTOMERS;

--select first_name as FN, last_name as LN, monthly_discount as DC, city||' '||street as FULL_ADDRESS
--from ACDB_CUSTOMERS


--<<Oracle Practice #4>>
--select distinct city
--from ACDB_CUSTOMERS;

--select distinct city, state
--from ACDB_CUSTOMERS;

--select first_name, monthly_discount
--from ACDB_CUSTOMERS
--where FIRST_NAME like '%e';

--select last_name, pack_id
--from ACDB_CUSTOMERS
--where last_name like '_d%';


--<<Oracle Practice #5>>
--select first_name, join_date, pack_id
--from ACDB_CUSTOMERS
--where FIRST_NAME not like '%a%'
--order by pack_id;

--select first_name, join_date, monthly_discount, pack_id
--from ACDB_CUSTOMERS
--where MONTHLY_DISCOUNT > 28
--order by MONTHLY_DISCOUNT, PACK_ID;

--select first_name, join_date, monthly_discount, pack_id
--from ACDB_CUSTOMERS
--where MONTHLY_DISCOUNT > 28
--order by MONTHLY_DISCOUNT DESC, PACK_ID ASC;

--select first_name, JOIN_DATE, MONTHLY_DISCOUNT
--from ACDB_CUSTOMERS
--where monthly_discount BETWEEN 28 and 30;

--select first_name, join_date
--from ACDB_CUSTOMERS
--where FIRST_NAME between 'B' and 'C';

--Declaring Foreign Keys
--Student(sid: string, name: string, gpa: float)
--enrolled(student_id:string, cid:string, grade:string)
--
--create table enrolled(
--    student_id CHAR(20),
--    cid CHAR(20),
--    grade CHAR(10),
--    primary key (student_id, cid),
--    foreign key (studnent_id) reference Students(sid)
--)


--<<Oracle Practice #6>>
--select c.first_name, c.last_name, p.pack_id, p.speed
--from ACDB_CUSTOMERS c, ACDB_PACKAGES p
--where c.pack_id = P.PACK_ID;

--select p.pack_id, p.speed, p.monthly_payment, s.sector_id
--from ACDB_PACKAGES p , ACDB_SECTORS s
--where P.SECTOR_ID = S.SECTOR_ID;

--select c.first_name, c.last_name, p.speed, P.MONTHLY_PAYMENT, S.SECTOR_NAME
--from ACDB_CUSTOMERS c, ACDB_PACKAGES p, ACDB_SECTORS s
--where c.pack_id = p.pack_id and p.sector_id = s.sector_id;

--select C.FIRST_NAME, C.LAST_NAME, P.PACK_ID, P.SPEED,  P.MONTHLY_PAYMENT, S.SECTOR_NAME
--from acdb_customers c, acdb_packages p, acdb_sectors s
--where C.PACK_ID=P.PACK_ID and P.SECTOR_ID = S.SECTOR_ID and S.SECTOR_NAME = 'Business';

--select C.FIRST_NAME, C.LAST_NAME, P.PACK_ID, P.SPEED, P.MONTHLY_PAYMENT, S.SECTOR_NAME
--from acdb_customers c
--join ACDB_PACKAGES p on C.PACK_ID = P.PACK_ID
--join ACDB_SECTORS s on P.SECTOR_ID = S.SECTOR_ID and S.SECTOR_NAME = 'Business';


--<<Oracle Practice #7>>
--select CUSTOMER_ID
--from ACDB_CUSTOMERS
--where MONTHLY_DISCOUNT > 5
--intersect
--select customer_id
--from ACDB_CUSTOMERS c, ACDB_PACKAGES p
--where C.PACK_ID=P.PACK_ID and P.MONTHLY_PAYMENT >100;

--select city
--from ACDB_CUSTOMERS
--where state = 'California'
--union
--select city
--from ACDB_CUSTOMERS c, ACDB_PACKAGES p, ACDB_SECTORS s
--where C.PACK_ID = P.PACK_ID and P.SECTOR_ID = S.SECTOR_ID and S.SECTOR_NAME = 'Business';

--select city
--from ACDB_CUSTOMERS
--where state = 'California'
--union all
--select city
--from ACDB_CUSTOMERS c, ACDB_PACKAGES p, ACDB_SECTORS s
--where C.PACK_ID = P.PACK_ID and P.SECTOR_ID = S.SECTOR_ID and S.SECTOR_NAME = 'Business';

--select first_name, last_name
--from ACDB_CUSTOMERS c, ACDB_PACKAGES p, ACDB_SECTORS s
--where C.PACK_ID=P.PACK_ID and P.SECTOR_ID = S.SECTOR_ID and S.SECTOR_NAME = 'Private'
--minus
--select first_name, last_name
--from ACDB_CUSTOMERS
--where city='Seattle' or city='San Francisco';


--<<Oracle Practice #8>>
--select pack_id speed, sector_id
--from ACDB_PACKAGES p
--where P.SECTOR_ID in
--(select P.SECTOR_ID
--from acdb_packages p
--where p.pack_id =10);

--select first_name, last_name, join_date
--from ACDB_CUSTOMERS
--where EXTRACT(month from join_date) = (select EXTRACT(month from join_date) from ACDB_CUSTOMERS where customer_id = 372)
--and extract(year from join_date) = (select extract(year from join_date) from ACDB_CUSTOMERS where customer_id = 372);

--select first_name, city, state, birth_date, monthly_discount
--from ACDB_CUSTOMERS
--where birth_date = (select birth_date from ACDB_CUSTOMERS where CUSTOMER_ID = 179)
--and MONTHLY_DISCOUNT > (select MONTHLY_DISCOUNT from ACDB_CUSTOMERS where CUSTOMER_ID = 107);


--<<Oracle Practice #9>>
--select first_name, last_name, city, state, pack_id
--from ACDB_CUSTOMERS
--where PACK_ID in (select pack_id from ACDB_PACKAGES where SPEED = '5Mbps');

--select first_name, monthly_discount, pack_id, main_phone_num, SECONDARY_PHONE_NUM
--from acdb_customers
--where pack_id in
--(select pack_id
--from ACDB_PACKAGES
--where sector_id in
--(select sector_id
--from ACDB_SECTORS
--where SECTOR_NAME = 'Business'));

--select pack_id, speed, monthly_payment
--from ACDB_PACKAGES
--where MONTHLY_PAYMENT > all(select MONTHLY_PAYMENT from ACDB_PACKAGES where speed = '5Mbps');

--select pack_id, speed, monthly_payment
--from ACDB_PACKAGES
--where MONTHLY_PAYMENT < any(select MONTHLY_PAYMENT from ACDB_PACKAGES where speed = '5Mbps');


--<<Oracle Practice #10>>
--select min(last_name), max(last_name)
--from ACDB_CUSTOMERS

--select count(state), count(distinct state)
--from acdb_customers;

--select min(monthly_discount), max(monthly_discount), avg(monthly_discount)
--from ACDB_CUSTOMERS;

--select first_name||' '||last_name as name
--from ACDB_CUSTOMERS
--where MONTHLY_DISCOUNT > (select avg(MONTHLY_DISCOUNT) from acdb_customers);


--<<Oracle Practice #11>>
--select state, count(customer_id) as CNT
--from ACDB_CUSTOMERS
--group by state
--order by CNT;

--select pack_id, count(*)
--from ACDB_CUSTOMERS
--group by pack_id;

--select pack_id, count(*)
--from ACDB_CUSTOMERS
--where monthly_discount > 20
--group by pack_id;


--<<Oracle Practice #12>>
--select pack_id,count(*)
--from acdb_customers
--group by pack_id
--having count(*) > 100;

--select state, min(monthly_discount)
--from ACDB_CUSTOMERS
--group by state;

--select state, min(monthly_discount)
--from ACDB_CUSTOMERS
--group by state
--having min(MONTHLY_DISCOUNT)>10;

--select speed, count(*)
--from ACDB_PACKAGES
--where MONTHLY_PAYMENT > 50
--group by speed
--having count(*) > 3;


--<<Oracle Practice #13>>
--select first_name, last_name, p.speed, p.monthly_payment
--from ACDB_CUSTOMERS c
--join ACDB_PACKAGES p on C.PACK_ID = P.PACK_ID;

--select C.FIRST_NAME, C.LAST_NAME, P.SPEED, P.MONTHLY_PAYMENT
--from ACDB_CUSTOMERS c, ACDB_PACKAGES p
--where C.PACK_ID = P.PACK_ID;

--select first_name, last_name, p.speed, p.monthly_payment
--from ACDB_CUSTOMERS c
--left outer join acdb_packages p on C.PACK_ID = P.PACK_ID;

--select first_name, last_name, p.speed, p.monthly_payment
--from ACDB_CUSTOMERS c
--right outer join acdb_packages p on C.PACK_ID = P.PACK_ID;

select first_name, last_name, p.speed, p.monthly_payment
from ACDB_CUSTOMERS c
full outer join acdb_packages p on C.PACK_ID = P.PACK_ID;


--<<Practice #1 - insert data with a condition>>
--insert into customers
--select *
--from suppliers
--where not exist
--(select customerID from customers where suppliers.supplierID = customers.customerID);

--INSERT INTO customers (customer_id, customer_name)
--SELECT supplier_id AS customer_id, supplier_name AS customer_name
--FROM suppliers
--WHERE NOT EXISTS (SELECT * FROM Customers WHERE Customers.client_id = suppliers.supplier_id);


--<<Practice #2 - Create Table>>
--create table new_table as
--    select *
--    from old_table;

--CREATE TABLE suppliers AS 
--(SELECT * FROM companies WHERE 1=2);

