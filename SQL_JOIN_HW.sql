--Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.id, employees.employee_name, salary.monthly_salary from
employees inner join employee_salary 
on employees.id = employee_salary.employee_id 
inner join salary 
on salary.id = employee_salary.salary_id
order by salary.monthly_salary;

--Вывести всех работников у которых ЗП меньше 2000

select employees.id, employees.employee_name, salary.monthly_salary from
employees inner join employee_salary 
on employees.id = employee_salary.employee_id 
inner join salary 
on salary.id = employee_salary.salary_id
where monthly_salary < 2000
order by employees.id;

--Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary.id, employee_salary.employee_id, salary.monthly_salary from
salary full outer join employee_salary 
on salary.id = employee_salary.salary_id 
where employee_salary.employee_id > 70 
and salary.monthly_salary is not null 
order by employee_salary.employee_id;

--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary.id, employee_salary.employee_id, salary.monthly_salary from
salary full outer join employee_salary 
on salary.id = employee_salary.salary_id 
where employee_salary.employee_id is null
order by employee_salary.salary_id;

--Найти всех работников кому не начислена ЗП
select employees.employee_name, employee_salary.salary_id, salary.monthly_salary from
employees full outer join employee_salary 
on employees.id = employee_salary.employee_id 
full outer join salary 
on salary.id = employee_salary.salary_id 
where salary.monthly_salary is null 
and employees.employee_name is not null;

--Вывести всех работников с названиями их должности
select employees.employee_name, roles.role_title from
roles_employee inner join employees 
on roles_employee.employee_id = employees.id 
inner join roles 
on roles_employee.role_id = roles.id
order by roles.role_title;

--Вывести имена и должность только Java разработчиков
select employees.employee_name, roles.role_title from
roles_employee inner join employees 
on roles_employee.employee_id = employees.id 
inner join roles 
on roles_employee.role_id = roles.id
where roles.role_title like '%Java%'
order by roles.role_title;

--Вывести имена и должность только Python разработчиков
select employees.employee_name, roles.role_title from
roles_employee inner join employees 
on roles_employee.employee_id = employees.id 
inner join roles 
on roles_employee.role_id = roles.id
where roles.role_title like 'Python%'
order by roles.role_title;

--Вывести имена и должность всех QA инженеров
select employees.employee_name, roles.role_title from
roles_employee inner join employees 
on roles_employee.employee_id = employees.id 
inner join roles 
on roles_employee.role_id = roles.id
where roles.role_title like '%QA%'
order by roles.role_title;

-- Вывести имена и должность ручных QA инженеров
select employees.employee_name, roles.role_title from
roles_employee inner join employees 
on roles_employee.employee_id = employees.id 
inner join roles 
on roles_employee.role_id = roles.id
where roles.role_title like '%Manual%'
order by roles.role_title;

--Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_title from
roles_employee inner join employees 
on roles_employee.employee_id = employees.id 
inner join roles 
on roles_employee.role_id = roles.id
where roles.role_title like '%Automation%'
order by roles.role_title;

--Вывести имена и зарплаты Junior специалистов
select employees.employee_name, roles.role_title, salary.monthly_salary from
employees inner join employee_salary
on employees.id = employee_salary.employee_id 
inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on employee_salary.employee_id = roles_employee.employee_id
inner join roles 
on roles_employee.role_id = roles.id
where roles.role_title like '%junior%'
order by roles.role_title;

-- Вывести имена и зарплаты Middle специалистов
select employees.employee_name, roles.role_title, salary.monthly_salary from
employees inner join employee_salary
on employees.id = employee_salary.employee_id 
inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on employee_salary.employee_id = roles_employee.employee_id
inner join roles 
on roles_employee.role_id = roles.id
where roles.role_title like '%middle%'
order by roles.role_title;

--Вывести имена и зарплаты Senior специалистов
select employees.employee_name, roles.role_title, salary.monthly_salary from
employees inner join employee_salary
on employees.id = employee_salary.employee_id 
inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on employee_salary.employee_id = roles_employee.employee_id
inner join roles 
on roles_employee.role_id = roles.id
where roles.role_title like '%senior%'
order by roles.role_title;

--Вывести зарплаты Java разработчиков
select roles.role_title, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
where roles.role_title like '%Java%'
order by monthly_salary;

--Вывести зарплаты Python разработчиков
select roles.role_title, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
where roles.role_title like '%Python%'
order by monthly_salary;

--Вывести имена и зарплаты Junior Python разработчиков
select roles.role_title, employees.employee_name, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
inner join employees 
on employees.id = roles_employee.employee_id 
where roles.role_title like 'Python_developer_junior'
order by monthly_salary;

--Вывести имена и зарплаты Middle JS разработчиков
select roles.role_title, employees.employee_name, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
inner join employees 
on employees.id = roles_employee.employee_id 
where roles.role_title like 'JS_developer_middle'
order by monthly_salary;

--Вывести имена и зарплаты Senior Java разработчиков
select roles.role_title, employees.employee_name, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
inner join employees 
on employees.id = roles_employee.employee_id 
where roles.role_title like 'Java_developer_senior'
order by monthly_salary;

--Вывести зарплаты Junior QA инженеров
select roles.role_title, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
where roles.role_title like 'QA%junior'
order by monthly_salary;

--Вывести среднюю зарплату всех Junior специалистов
select round(avg (monthly_salary), 1) from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
where roles.role_title like '%junior';

--Вывести сумму зарплат JS разработчиков
select round(avg (monthly_salary), 1) from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
where roles.role_title like '%JS%';

--Вывести минимальную ЗП QA инженеров
select min (monthly_salary) from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
where roles.role_title like '%QA%';

--Вывести максимальную ЗП QA инженеров
select max (monthly_salary) from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
where roles.role_title like '%QA%';

-- Вывести количество QA инженеров
select count (employee_id) from 
roles_employee inner join roles 
on roles_employee.role_id  = roles.id 
where roles.role_title like '%QA%';

--Вывести количество Middle специалистов
select count (employee_id) from 
roles_employee inner join roles 
on roles_employee.role_id  = roles.id 
where roles.role_title like '%middle%';

--Вывести количество разработчиков
select count (employee_id) from 
roles_employee inner join roles 
on roles_employee.role_id  = roles.id 
where roles.role_title like '%developer%';

--Вывести фонд (сумму) зарплаты разработчиков
select sum (monthly_salary) from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
where roles.role_title like '%developer%';

--Вывести имена, должности и ЗП всех специалистов по возрастанию
select roles.role_title, employees.employee_name, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
inner join employees 
on employees.id = roles_employee.employee_id 
order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select roles.role_title, employees.employee_name, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
inner join employees 
on employees.id = roles_employee.employee_id 
where monthly_salary > 1700 and monthly_salary < 2300
order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select roles.role_title, employees.employee_name, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
inner join employees 
on employees.id = roles_employee.employee_id 
where monthly_salary < 2300
order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select roles.role_title, employees.employee_name, salary.monthly_salary from 
employee_salary inner join salary 
on employee_salary.salary_id = salary.id 
inner join roles_employee 
on roles_employee.employee_id = employee_salary.employee_id 
inner join roles 
on roles.id = roles_employee.role_id
inner join employees 
on employees.id = roles_employee.employee_id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;



order by monthly_salary;