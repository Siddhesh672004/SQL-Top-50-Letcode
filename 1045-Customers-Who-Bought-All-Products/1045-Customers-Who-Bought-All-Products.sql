# Write your MySQL query statement below
Select customer_id
From Customer
Group By customer_id
Having count(Distinct product_key) =(
    select count(product_key)
    from Product
)