select CUSTOMER_ID
from acdb_customers
group by CUSTOMER_ID
having COUNT(distinct state) > 1;

select state
from ACDB_CUSTOMERS
group by state
having count(distinct CUSTOMER_ID) > 1;