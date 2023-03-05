SELECT DISTINCT firstName, lastName, rating, projno
FROM Worker a, Assign b
WHERE a.empId= b.empId AND projNo in 
    (SELECT projNo FROM Project WHERE projMgrId = 
        (SELECT empId FROM Worker WHERE firstName='Michael' AND lastName='Burns'))
ORDER BY lastName, firstName;
