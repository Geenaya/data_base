--2.a

select surname, salary
from employees
order by salary desc
limit 1

--2.b

select surname
from employees
order by surname

--2.c

select level, AVG(date_part('year', CURRENT_DATE) - extract(year from start_date))
from employees
group by level

--2.d

select surname, department.name
from employees
join department on employees.department_id = department.id

--2.e

select department.name, max(salary)
from employees
join department on employees.department_id = department.id
group by department.name
