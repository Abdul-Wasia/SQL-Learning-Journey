Codes:

insert into emp values
(1, "Ali", "Khan", 60000, "Software Engineer", "IT"),
(2, "Ahmed", "Shaikh", 75000, "Senior Developer", "IT")
(3, "Sara", "Malik", 50000, "HR Executive", "HR"),
(4, "Ayesha", "Noor", 65000, "Business Analyst", "Operations"),
(5, "Hassan", "Raza", 80000, "Project Manager", "IT"),
(6, "Umar", "Farooq", 55000, "Accountant", "Finance"),
(7, "Fatima", "Ali", 48000, "Marketing Officer", "Marketing"),
(8, "Bilal", "Ahmed", 70000, "Data Analyst", "IT"),
(9, "Zain", "Abbas", 52000, "Sales Executive", "Sales"),
(10, "Noor", "Khan", 90000, "Department Head", "Operations");

truncate table emp;

insert into emp values
(1, "Ali", "Khan", 60000, "Software Engineer", "IT"),
(2, "Ahmed", "Shaikh", 75000, "Senior Developer", "IT"),
(3, "Sara", "Malik", 50000, "HR Executive", "HR"),
(4, "Ayesha", "Noor", 65000, "Business Analyst", "Operations"),
(5, "Hassan", "Raza", 80000, "Project Manager", "IT"),
(6, "Umar", "Farooq", 55000, "Accountant", "Finance"),
(7, "Fatima", "Ali", 48000, "Marketing Officer", "Marketing"),
(8, "Bilal", "Ahmed", 70000, "Data Analyst", "IT"),
(9, "Zain", "Abbas", 52000, "Sales Executive", "Sales"),
(10, "Noor", "Khan", 90000, "Department Head", "Operations");

Select * From emp; # Class activity 1

Select * From emp where department = "IT" and salary >60000;
#Class Activity 2

Select * From emp where role_ =  "Data Analyst" OR  role_ = "Software Engineer";
#class Activity 3

Select * from emp where first_name  Like  "A%";
#Class Activity 4

Select * from emp where last_name Like "%n";
#class Activity 5

Select * from emp where department <> "HR";
#class Activity 6

Select * from emp where department ="IT" OR department="Finance" OR department ="Sales";
#Class Activity 7

Select * from emp where salary >50000 and salary <80000;
#Class Activity 8

Select * from emp where first_name Like "A%" and department = "IT";
#class Activity 9

Select * from emp where last_name like "%a%" and salary >55000;
#Class Activiity 10


Alter table emp add column experience INT;
 
truncate table emp;
insert into emp values
(1, "Ali", "Khan", 60000, "Software Engineer", "IT",3),
(2, "Ahmed", "Shaikh", 75000, "Senior Developer", "IT",6),
(3, "Sara", "Malik", 50000, "HR Executive", "HR",2),
(4, "Ayesha", "Noor", 65000, "Business Analyst", "Operations",4),
(5, "Hassan", "Raza", 80000, "Project Manager", "IT",8),
(6, "Umar", "Farooq", 55000, "Accountant", "Finance",3),
(7, "Fatima", "Ali", 48000, "Marketing Officer", "Marketing",2),
(8, "Bilal", "Ahmed", 70000, "Data Analyst", "IT",5),
(9, "Zain", "Abbas", 52000, "Sales Executive", "Sales",3),
(10, "Noor", "Khan", 90000, "Department Head", "Operations",10);

select * from emp where department ="IT" OR experience>7;
#class Activity 11

Select * from emp where department  NOT IN ("IT", "HR");
#class Activity 12


Select * from emp where role_ NOT IN ("Manager") and salary >60000;
#Class Activity 13

Select * from emp where department IN ("IT") and role_ NOT IN ("Software Engineer");
#Class Activity 14

Select * from emp where (first_name like "A%" OR last_name like "%d") and salary > 50000;
#Class Activity 15 
