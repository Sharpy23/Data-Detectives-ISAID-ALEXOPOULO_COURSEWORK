SELECT empid, firstname || ' ' || lastname as "Staff Name", round(salary/12) AS "Monthly Salary"
FROM Worker;
