-------------------------------------------------------------------
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

insert into employees (employee_name)
values 	('Jennie Johnson'),
		('Christopher White'),
		('Keith Richards'),
		('Stephen Gordon'),
		('Stanley Cunningham'),
		('Harry Garza'),
		('Nicole Black'),
		('Tina Williams'),
		('Gina Jones'),
		('Velma Williams'),
		('Brenda Reyes'),
		('John Andrews'),
		('Daniel Gonzalez'),
		('Audrey Ward'),
		('Charles Bryant'),
		('Raymond Turner'),
		('Gail Fernandez'),
		('Maria Hamilton'),
		('Douglas Powell'),
		('Francis Taylor'),
		('Armando Saunders'),
		('Mildred Morgan'),
		('Dorothy Lee'),
		('Larry Brown'),
		('Willie Johnston'),
		('Albert Rogers'),
		('John Jones'),
		('Daniel Huff'),
		('Harold Barker'),
		('Douglas Vargas'),
		('Alan Rogers'),
		('Erik Rose'),
		('Troy Austin'),
		('John Taylor'),
		('Joann Vega'),
		('Florence Sanchez'),
		('Kathryn Alvarado'),
		('William Perry'),
		('Helen Farmer'),
		('Thomas Smith'),
		('Gene Bailey'),
		('Robert Brown'),
		('George Flores'),
		('Patricia Thompson'),
		('Kristin Sanders'),
		('Judy Thompson'),
		('Evelyn Smith'),
		('Joseph Austin'),
		('Katie Williams'),
		('Ella Robinson'),
		('Kenneth Porter'),
		('Laurie Norton'),
		('Kimberly Myers'),
		('Raul Collins'),
		('Cheryl Cole'),
		('Jorge Schultz'),
		('Renee Davis'),
		('Virginia Morris'),
		('William Harris'),
		('Amy Robinson'),
		('Patricia Anderson'),
		('Kathy Allen'),
		('Neil Barnes'),
		('Pamela Taylor'),
		('Alex Allen'),
		('Charlotte Romero'),
		('Margaret Johnson'),
		('David Bradley'),
		('James Simon'),
		('Wanda Ramirez');
	
-------------------------------------------------------------------

create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

insert into salary (monthly_salary)
values 	('1000'),
		('1100'),
		('1200'),
		('1300'),
		('1400'),
		('1500'),
		('1600'),
		('1700'),
		('1800'),
		('1900'),
		('2000'),
		('2100'),
		('2200'),
		('2300'),
		('2400'),
		('2500');

-------------------------------------------------------------------

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

insert into employee_salary (employee_id, salary_id)
values 	(3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(72, 16),
		(65, 12),
		(34, 2),
		(84, 12),
		(2, 5),
		(79, 4),
		(4, 4),
		(28, 6),
		(73, 1),
		(31, 8),
		(7, 12),
		(42, 6),
		(59, 7),
		(98, 10),
		(46, 14),
		(12, 9),
		(61, 10),
		(81, 7),
		(49, 4),
		(17, 2),
		(62, 10),
		(77, 15),
		(66, 14),
		(87, 11),
		(51, 3),
		(93, 9),
		(20, 6),
		(69, 9),
		(90, 5);

-------------------------------------------------------------------
	
create table roles (
	id serial primary key,
	role_name int not null unique
);
		
select * from roles;

alter table roles 
alter column role_name type varchar(30);

insert into roles (role_name)
values 	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

-------------------------------------------------------------------
	
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id)
		references employees (id),
	role_id int not null,
	foreign key (role_id)
		references roles (id)
);

select * from roles_employee;

insert into roles_employee (employee_id, role_id)
values 	(7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(1, 5),
		(8, 10),
		(12, 4),
		(15, 1),
		(31, 6),
		(24, 11),
		(66, 17),
		(29, 7),
		(55, 16),
		(45, 19),
		(57, 17),
		(33, 20),
		(68, 8),
		(19, 1),
		(37, 7),
		(63, 18),
		(13, 2),
		(28, 13),
		(41, 16),
		(69, 6),
		(44, 12),
		(48, 19),
		(38, 18),
		(40, 14),
		(46, 2),
		(52, 4),
		(51, 15),
		(6, 17),
		(61, 14),
		(70, 20);

-------------------------------------------------------------------