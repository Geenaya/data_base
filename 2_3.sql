--6.

--Уникальный номер сотрудника, его ФИО и стаж работы – для всех сотрудников компании

select id, 
	fio, 
	date_part('year', CURRENT_DATE) - extract(year from start_date)
from employees

--Уникальный номер сотрудника, его ФИО и стаж работы – только первых 3-х сотрудников

select id, 
	fio, 
	date_part('year', CURRENT_DATE) - extract(year from start_date)
from employees
order by id
limit 3	

--Уникальный номер сотрудников - водителей

select id from employees
where job_title = 'водитель'

--Выведите номера сотрудников, которые хотя бы за 1 квартал получили оценку D или E

select empl_id from rating
where mark = 'D' or mark = 'E'

--Выведите самую высокую зарплату в компании.

select salary 
from employees
order by salary desc
limit 1

--Выведите название самого крупного отдела

select name from department
order by empl_count desc
limit 1
