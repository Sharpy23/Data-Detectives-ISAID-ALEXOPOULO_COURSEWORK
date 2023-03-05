ALTER TABLE Project ADD numEmployeesAssigned INT;
UPDATE Project
SET numEmployeesAssigned = (
    SELECT COUNT(DISTINCT empid)
    FROM Assign
    WHERE Assign.projno = Project.projno);
