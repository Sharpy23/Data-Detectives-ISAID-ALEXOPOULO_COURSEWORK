SELECT firstname, lastname
FROM Worker
WHERE empid = ANY
    (SELECT empid FROM Assign WHERE Projno = 1001)
ORDER BY lastname;
