SELECT 
    e.name AS lastname, firstname 
    d.name AS mgrid
FROM worker e
LEFT JOIN assign a ON e.empid = a.empid
JOIN worker d ON e.departmentname = d.departmentname AND d.empid = d.departmentname
WHERE a.projno IS NULL;
