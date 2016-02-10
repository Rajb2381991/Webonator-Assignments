#Consider the following relational schema. An employee can work in more than
#one department; the pct_time field of the Works relation shows the percentage of
#time that a given employee works in a given department.
#and manager_id refers to emp.id (i.e. emp id)



    emp(id: integer, name: string, age: integer, salary: double)
    dept(id: integer, name: string, budget: double, manager_id: integer)
    works(emp_id: integer, dept_id: integer, pct_time: integer)
