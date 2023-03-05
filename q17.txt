ALTER TABLE Project
ADD Status varchar2(30);
 
UPDATE Project 
SET status = 'ACTIVE'
WHERE projno = 1030 OR projno = 1041 OR projno = 1005;
 
UPDATE Project 
SET status = 'COMPLETED'
WHERE projno = 1001;
 
UPDATE Project 
SET status = 'CANCELLED'
WHERE projno = 1031;
 
SELECT *
FROM Project
WHERE status = 'ACTIVE';
