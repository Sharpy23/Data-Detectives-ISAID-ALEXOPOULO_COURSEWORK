SELECT firstname, lastname 
FROM WORKER a 
INNER JOIN DEPT b 
ON a.departmentid = b.departmentid 
WHERE departmentname = 'Accounting';
