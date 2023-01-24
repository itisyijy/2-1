--#1
--OG
--SELECT pack_id, speed , sector_id
--FROM acdb_packages
--WHERE sector_id =(SELECT sector_id FROM acdb_packages WHERE pack_id = 10);

--Transformed
--select A.PACK_ID, A.SPEED, A.SECTOR_ID
--from ACDB_PACKAGES a, ACDB_PACKAGES b
--where B.PACK_ID = 10 and A.SECTOR_ID = B.SECTOR_ID;


--#2
--OG
--SELECT first_name , last_name , join_date
--FROM acdb_customers
--WHERE extract(year from join_date) =
--(SELECT extract (year from join_date) FROM acdb_customers WHERE customer_id = 372)
--AND
--extract (month from join_date) =
--(SELECT extract (month from join_date) FROM acdb_customers WHERE customer_id = 372);

--Transformed
--select a.first_name , a.last_name , a.join_date
--from acdb_customers a, acdb_customers b
--where extract(year from a.join_date) = extract(year from b.join_date) and b.customer_id = 372
--intersect
--select a.first_name, a.last_name, a.join_date
--from acdb_customers a, acdb_customers b
--where extract(month from a.join_date) = extract(month from b.join_date) and b.customer_id = 372;


--#3
--OG
--SELECT first_name , last_name , city , state, pack_id
--FROM acdb_customers
--WHERE pack_id IN (SELECT pack_id FROM acdb_packages WHERE speed = '5Mbps');

--Transformed
--select c.first_name, c.last_name, c.city, c.state, c.pack_id
--from acdb_customers c, acdb_packages p
--where c.pack_id = p.pack_id and p.speed = '5Mbps';


--#4
--OG
--SELECT first_name , monthly_discount , pack_id , main_phone_num, secondary_phone_num
--FROM acdb_customers
--WHERE pack_id IN (SELECT pack_id FROM acdb_packages WHERE sector_id IN
--(SELECT sector_id FROM acdb_sectors WHERE sector_name = 'Business'));

--Transformed
--select c.first_name, c.monthly_discount, c.pack_id, c.main_phone_num, c.secondary_phone_num
--from acdb_customers c, acdb_packages p, acdb_sectors s
--where c.pack_id = p.pack_id and p.sector_id = s.sector_id and s.sector_name = 'Business';


--#5
--OG
--SELECT customer_id , first_name , city , state ,birth_date , monthly_discount
--FROM acdb_customers
--WHERE birth_date = (SELECT birth_date FROM acdb_customers WHERE customer_id = 179)
--AND
--monthly_discount > (SELECT monthly_discount FROM acdb_customers WHERE customer_id = 107);

--Transformed
--select a.customer_id, a.first_name, a.city, a.state, a.birth_date, a.monthly_discount
--from acdb_customers a, acdb_customers b, acdb_customers c
--where a.birth_date = b.birth_date and b.customer_id = 179 and a.monthly_discount > c.monthly_discount and c.customer_id = 107;


--#6: ALL -> NOT EXIST
--OG
--SELECT pack_id ,speed , monthly_payment
--FROM acdb_packages
--WHERE monthly_payment
--> ALL(SELECT monthly_payment FROM acdb_packages WHERE speed = '5Mbps');

--Tranformed
--select a.pack_id, a.speed, a.monthly_payment
--from acdb_packages a
--where not exists(select a.monthly_payment from acdb_packages b where a.monthly_payment <= b.monthly_payment and B.SPEED = '5Mbps');


--#7: ANY -> EXIST
--OG
--SELECT pack_id ,speed , monthly_payment
--FROM acdb_packages
--WHERE monthly_payment >
--ANY (SELECT monthly_payment FROM acdb_packages WHERE speed = '5Mbps');

--Transformed
--select a.pack_id, a.speed, a.monthly_payment
--from acdb_packages a
--where exists(select a.monthly_payment from acdb_packages b where b.speed='5Mbps' and a.monthly_payment > b.monthly_payment);


--#8
--OG
--SELECT pack_id ,speed , monthly_payment
--FROM acdb_packages p1
--WHERE EXISTS (select * FROM acdb_packages p2 WHERE p2.speed = '5Mbps'
--and p1.monthly_payment <= p2.monthly_payment);

--Transfromed
--select PACK_ID, SPEED, MONTHLY_PAYMENT
--from ACDB_PACKAGES a
--where (select COUNT(*) from ACDB_PACKAGES b where B.SPEED = '5Mbps' and A.MONTHLY_PAYMENT <= B.MONTHLY_PAYMENT) > 0;


--#9 x in (select y ~) -> exists(~ where x=y)
--OG
--SELECT pack_id ,speed , monthly_payment
--FROM acdb_packages p1
--WHERE p1.pack_id IN (select p2.pack_id FROM acdb_packages p2 WHERE p2.speed = '5Mbps' AND p1.monthly_payment <= p2.monthly_payment);

--Transformed
--select A.PACK_ID, A.SPEED, A.MONTHLY_PAYMENT
--from ACDB_PACKAGES a
--where exists (select A.PACK_ID from ACDB_PACKAGES b where A.PACK_ID = B.PACK_ID and B.SPEED = '5Mbps' and A.MONTHLY_PAYMENT <= B.MONTHLY_PAYMENT);


--#10
--OG
--SELECT pack_id ,speed , monthly_payment
--FROM acdb_packages p1
--WHERE p1.pack_id NOT IN (select p2.pack_id FROM acdb_packages p2 WHERE p2.speed = '5Mbps' 
--AND p1.monthly_payment <= p2.monthly_payment);

--Transformed
--select A.PACK_ID, A.SPEED, A.MONTHLY_PAYMENT
--from ACDB_PACKAGES a
--where not exists (select B.PACK_ID from ACDB_PACKAGES b where A.PACK_ID = B.PACK_ID and B.SPEED = '5Mbps' and A.MONTHLY_PAYMENT <= B.MONTHLY_PAYMENT);


--#11 Aggregation -> SELECT
--OG
--SELECT pack_id ,speed , monthly_payment
--FROM acdb_packages
--WHERE monthly_payment > ALL(SELECT monthly_payment FROM acdb_packages WHERE speed = '5Mbps');

--Transformed
--select a.pack_id, a.speed, a.monthly_payment
--from acdb_packages a
--where a.monthly_payment > (select max(b.monthly_payment) from acdb_packages b where b.speed='5Mbps');


--#12
--OG
--SELECT pack_id ,speed , monthly_payment
--FROM acdb_packages
--WHERE monthly_payment > SOME(SELECT monthly_payment FROM acdb_packages WHERE speed = '5Mbps');

--Transformed
--select A.PACK_ID, A.SPEED, A.MONTHLY_PAYMENT
--from ACDB_PACKAGES a
--where A.MONTHLY_PAYMENT > (select MIN(B.MONTHLY_PAYMENT) from ACDB_PACKAGES b where B.SPEED = '5Mbps');