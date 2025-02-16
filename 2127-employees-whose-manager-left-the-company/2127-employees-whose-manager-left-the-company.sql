# Write your MySQL query statement below
select a.employee_id from Employees as a

where a.manager_id not in ( select employee_id from Employees) 
and salary<30000
group by a.manager_id,a.salary
order by a.employee_id asc ;