SELECT  p.projno,
COUNT(DISTINCT a.empid) AS num_workers,
SUM(a.hoursassigned) AS total_hours
FROM project p
INNER JOIN assign a ON p.projno = a.projno 
GROUP BY p.projno;
