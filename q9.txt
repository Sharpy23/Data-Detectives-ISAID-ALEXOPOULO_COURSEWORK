CREATE VIEW SumOfProjects
AS SELECT DISTINCT b.projno, b.projname, a.empid, a.lastname, a.firstname
FROM Worker a, Project b
INNER JOIN Assign c
ON b.projNo = c.projno 
WHERE a.empid = c.empid
ORDER BY b.projname;
