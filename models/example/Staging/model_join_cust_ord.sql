{{config(materialized='table')}}

select customers.customer_id,customers.customer_name,customers.city,orders.order_date 
from {{source('datafeed_shared_schema','customers')}} as customers
left outer join {{source('datafeed_shared_schema','orders')}} as orders 
on customers.customer_id = orders.customer_id