Codes:
use lab02;

select * from emp where first_name like "%a%" and last_name NOT like "k%";
#week exercsie 1

Select * from emp where  department NOT IN("IT", "HR") and salary > 50000;
#week exercise 2

Select * From emp where role_ like  "%Analyst%" and department in ("IT", "Operations");
#week exercise 3

Select * from emp where (first_name like "A%" OR first_name like "S%") and salary >=60000;
#week exercise 4

Select * from emp where last_name like "%r" and  department != "Finance";
#week exericse 5

Select * From emp where department IN("IT", "Marketing","Sales") and experience >3;
#week exercise 6

Select * from emp where department = "Operations" and role_ != "Project Manager";
#week exercise 7

Select * from emp where (first_name like "%i%"  and last_name like "%a%") and salary >50000;
#week exercise 8

Select * from emp where department NOt IN ("HR", "IT") and salary Between 45000 and 75000;
#week exercise 9

Select * from emp where department IN ("Finance", "Operations") and experience NOt IN (2,3);
#week exercise 10

Select * from emp where NOt (role_  like "%manager%") and salary >65000;	 
#week exercise 11

Select * from emp where (first_name like "A%" )and (last_name like "%d" or last_name like "%n"); 
#week exercise 12

Select * from emp where department IN ("IT") and NOt (first_name like "%i%");
#week exercise 13

Select * from emp where department IN ("Sales", "Marketing") and Not (salary > 60000);
#week exericse 14

Select * from emp where (last_name like "%A%" ) and experience >=4 and Not(department = "IT");
#week exercise 15

Select * from emp where department IN("IT", "Operations") and Not(salary between 60000 and 80000);
#week exercise 16

Select * from emp where (first_name like "A%" OR first_name like "H%" OR first_name like "F%")  and Not(role_ = "Analyst");
#Week exercise 17

Select * from emp where experience > 5 and department != "IT";
# week exercsie 18

Select * from emp where salary > 70000 and (role_ like "%head%" or role_ like "%manager%") and department = "Operations";
#week exercise 19

Select * from emp where first_name Like "%o%" and NOT(last_name Like "%e%" ) and NOT(department IN("sales", "marketing"));
#week exercise 20
