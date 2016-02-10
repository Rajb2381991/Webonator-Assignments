#1.Print the names and ages of each employee who works in both the Hardware department and the Software department.

Solution : select name,age from emp where emp.id in (select emp_id from dept inner join works on dept.id = works.dept_id
           where name='software' or name='hardware' group by emp_id having count(dept.name)=2)
     
#2.Print the names of employees comma separated in one column and manager name in another column who have same manager 
(let emp name repeat if 1 emp belongs to 2 depts with different managers)     

Solution : 	select ManagerName as Manager.group_concat<distinct(emp.name)> from (select emp.name 
	          as ManagerName,dept.manager_id as DeptId from emp inner join dept on emp.id=dept.manager_id) as x inner join
	         (select emp.name as EmployeeName,dept.manager_id as ManagerId from emp inner join works on emp.id=works.emp_id inner join
	          dept on works.dept_id=dept.id where emp.id<> dept.manager_id) as y on DeptId=ManagerId group by ManagerName;
	
#3.For each department with more than 20 full-time-equivalent employees (i.e.,where the part-time and full-time employees
add up to at least that many full time employees), print the did together with the number of employees that work in that department.	

Solution : select w.dept_id,count(w.emp_id) as 'more than 20 full time' from works w group by w.dept_id having 2000 < 
           (select sum(w1.pct_time) from works w1 where w1.dept_id = w.dept_id)

#4.Print the name of each employee whose salary exceeds the budget of all of the departments that he or she works in.

Solution :  select distinct emp.name from dept inner join works on dept.id = works.dept_id
            inner join emp on emp.id = works.emp_id where salary > budget 

#5.Find the manager_ids of managers who manage only departments with budgets greater than $1 million.            

Solution : select manager_id from dept  where  budget > 100000;

#6.Find the names of managers who manage the departments with the largest budgets.

Solution : select distinct e.name from emp e,dept d where e.id = d.manager_id and d.budget = 
           (select max(budget)from dept);
           
#7.If a manager manages more than one department, he or she controls the sum of all the budgets for those departments. 
Find the manager_ids and names of managers who control more than $5 million.  

Solution :  select name from emp where id = ( select d.manager_id from dept d where 50000000 < (select sum(d1.budget)
            from dept d1 where d1.manager_id = d.manager_id))

#8.Find the manager_ids and names of managers who control the largest amounts.

Solution :  select d.manager_id,e.name from emp e,dept d where d.manager_id = e.id and d.budget = (select max(budget)
            from dept); 

#9.Find the names of managers who manage only departments with budgets larger than $1 million, but at least one department 
   with budget less than $5 million.
   
Solution :  select dept.manager_id,emp.name from dept,emp where emp.id = dept.manager_id and dept.budget > 1000000  
            and dept.budget < 500000 group by dept.manager_id , emp.name; 
