{{
config(
materialized = "table"
)
}}

with customers as (
    
    SELECT id as CUSTOMER_ID,first_name,last_name,CONCAT(first_name, ' ', last_name) AS FULL_NAME FROM jaffle_shop_customers
)

select * from customers