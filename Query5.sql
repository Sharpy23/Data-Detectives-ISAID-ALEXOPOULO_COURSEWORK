SELECT firstname, lastname, departmentid, salary
FROM worker 
WHERE departmentid= 2 AND salary IN  
    ( SELECT MIN(salary)   
        FROM worker GROUP BY departmentid);
