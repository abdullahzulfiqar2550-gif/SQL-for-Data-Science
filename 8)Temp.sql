#Temporary Table
use emp;
CREATE TEMPORARY TABLE Engg( 
branch VARCHAR(200), 
students INT);

select * from Engg;

INSERT INTO Engg 
VALUES('AI',120);

INSERT INTO Engg 
VALUES('ME',60);

CREATE TEMPORARY TABLE temp1 
SELECT emp_id, emp_name FROM employee_final; 

select * from temp1;

DROP TEMPORARY TABLE temp1;  
DROP TEMPORARY TABLE Engg;

select * from employee_final;

select * from temp1;


