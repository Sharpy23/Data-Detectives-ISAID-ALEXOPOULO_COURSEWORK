SELECT a. projno, b.empid, b.lastname, b.firstname
FROM assign a
INNER JOIN Worker b
ON a.empid=b.empid
WHERE projno = ANY 
    (SELECT projno FROM Project WHERE Startdate > '01/SEP/2021')
ORDER BY a.projno;
