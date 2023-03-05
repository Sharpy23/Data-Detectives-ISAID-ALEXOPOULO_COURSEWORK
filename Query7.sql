SELECT firstname, lastname, (SELECT departmentname FROM DEPT b WHERE a.departmentid = b.departmentid ) AS Department
FROM Worker a
WHERE empid = ANY 
    (SELECT empid FROM Assign WHERE Projno = 1019) 
ORDER BY lastname;
