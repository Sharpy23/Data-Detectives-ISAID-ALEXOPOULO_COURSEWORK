SELECT * FROM PROJECT 
WHERE budget=
    ( SELECT MAX(budget) 
    FROM PROJECT );   
