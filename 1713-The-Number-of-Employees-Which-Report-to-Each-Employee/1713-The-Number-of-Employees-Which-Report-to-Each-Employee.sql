select 
    E1.employee_id as employee_id ,
    E1.name as name,
    count(E2.employee_id) as reports_count,
    Round(Avg(E2.age)) as average_age
from 
    Employees E1 Inner Join Employees E2
On 
    E1.employee_id = E2.reports_to
Group By
    E1.employee_id, E1.name
Order By
    employee_id