create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
)

insert into employees (employee_name)
values ('Wade'),
	('Dave'),
	('Seth'),
	('Ivan'),
	('Riley'),
	('Gilbert'),
	('Jorge'),
	('Dan'),
	('Brian'),
	('Roberto'),
	('Ramon'),
	('Miles'),
	('Liam'),
	('Nathaniel'),
	('Ethan'),
	('Lewis'),
	('Milton'),
	('Claude'),
	('Joshua'),
	('Glen'),
	('Harvey'),
	('Blake');

insert into employees(employee_name)
values ('Antonio'),
	('Connor'),
	('Julian'),
	('Aidan'),
	('Harold'),
	('Conner'),
	('Peter'),
	('Hunter'),
	('Eli'),
	('Alberto'),
	('Carlos'),
	('Shane'),
	('Aaron'),
	('Marlin'),
	('Paul'),
	('Ricardo'),
	('Hector'),
	('Alexis'),
	('Adrian'),
	('Kingston'),
	('Douglas'),
	('Gerald');

insert into employees(employee_name)
values ('Joey'),
	('Johnny'),
	('Charlie'),
	('Scott'),
	('Martin'),
	('Tristin'),
	('Troy'),
	('Tommy'),
	('Rick'),
	('Victor'),
	('Jessie'),
	('Neil'),
	('Ted'),
	('Nick'),
	('Wiley'),
	('Morris'),
	('Clark'),
	('Stuart'),
	('Orlando'),
	('Keith'),
	('Marion'),
	('Marshall'),
	('Noel'),
	('Everett'),
	('Romeo'),
	('Sebastian');

create table salary_ddl(
	id serial primary key,
	monthly_salary int not null
)
 
insert into salary_ddl(monthly_salary)
values (1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
)


insert into employee_salary(id, employee_id, salary_id)
values (1, 3, 7),
	(2, 1, 4),
	(3, 5, 9),
	(4, 40, 13),
	(5, 23, 4),
	(6, 11, 2),
	(7, 52, 10),
	(8, 15, 13),
	(9, 26, 4),
	(10, 16, 1),
	(11, 33, 7),
	(12, 62, 11),
	(13, 28, 8),
	(14, 12, 1),
	(15, 18, 3),
	(16, 13, 10),
	(17, 79, 1),
	(18, 86, 11),
	(19, 25, 15),
	(20, 17, 3),
	(21, 34, 4),
	(22, 19, 18),
	(23, 32, 8),
	(24, 82, 6),
	(25, 35, 2),
	(26, 37, 6),
	(27, 90, 3),
	(28, 24, 7),
	(29, 10, 10),
	(30, 38, 1),
	(31, 89, 8),
	(32, 94, 3),
	(33, 30, 7),
	(34, 27, 5),
	(35, 21, 9),
	(36, 95, 4),
	(37, 29, 11),
	(38, 36, 5),
	(39, 39, 3);

create table roles_ddl (
	id serial primary key,
	role_name int not null unique
)

alter table roles_ddl
alter column role_name type varchar(30);

insert into roles_ddl(id, role_name)
values (1, 'Junior Python developer'),
	(2, 'Middle Python developer'),
	(3, 'Senior Python developer'),
	(4, 'Junior Java developer'),
	(5, 'Middle Java developer'),
	(6, 'Senior Java developer'),
	(7, 'Junior JavaScript developer'),
	(8, 'Middle JavaScript developer'),
	(9, 'Senior JavaScript developer'),
	(10, 'Junior Manual QA engineer'),
	(11, 'Middle Manual QA engineer'),
	(12, 'Senior Manual QA engineer'),
	(13, 'Project Manager'),
	(14, 'Designer'),
	(15, 'HR'),
	(16, 'CEO'),
	(17, 'Sales manager'),
	(18, 'Junior Automation QA engineer'),
	(19, 'Middle Automation QA engineer'),
	(20, 'Senior Automation QA engineer');

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null
)



insert into roles_employee(id, employee_id, role_id)
values (1, 7, 2),
	(2, 20, 4),
	(3, 3, 9),
	(4, 5, 13),
	(5, 23, 4),
	(6, 11, 2),
	(7, 10, 9),
	(8, 22, 13),
	(9, 21, 3),
	(10, 34, 4),
	(11, 6, 7),
	(12, 12, 8),
	(13, 1, 15),
	(14, 35, 1),
	(15, 2, 2),
	(16, 24, 18),
	(17, 33, 4),
	(18, 4, 15),
	(19, 40, 12),
	(20, 8, 10),
	(21, 17, 11),
	(22, 13, 11),
	(23, 36, 4),
	(24, 9, 7),
	(25, 14, 15),
	(26, 26, 3),
	(27, 32, 6),
	(28, 15, 9),
	(29, 31, 5),
	(30, 39, 12),
	(31, 27, 16),
	(32, 28, 20),
	(33, 16, 2),
	(34, 25, 1),
	(35, 38, 10),
	(36, 19, 15),
	(37, 29, 14),
	(38, 30, 19),
	(39, 18, 17),
	(40, 37, 18);


select * from employees;
select * from salary_ddl;
select * from employee_salary;
select * from roles_ddl;
select * from roles_employee;