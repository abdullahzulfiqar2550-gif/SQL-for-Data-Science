CREATE DATABASE company_db;
use company_db;

CREATE TABLE employees(
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    email VARCHAR(100),
    phone CHAR(11),
    salary DECIMAL(10,2),
    bonus FLOAT,
    age INT,
    is_active TINYINT,
    department ENUM('HR','IT','Finance','Sales','Marketing'),
    skills SET('Python','SQL','Excel','Java','Power BI','AWS'),
    joining_date DATE,
    last_login DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    remarks TEXT);
    
    
INSERT INTO employees(first_name,last_name,gender,email,phone,salary,bonus,age,is_active,department,skills,joining_date,last_login,remarks) VALUES ('Muhammad','Abdullah','M','abdullah.zulfiqar2550@gmail.com','03241280523',65000.50,2500.5,19,1,'IT','Python,java,AWS','2022-05-15','2025-07-20 09:30:15','Excellent employee'),('Muhammad','Samran','M','samran@gmail.com','9876543211',72000,3000,28,1,'HR','Excel,Power BI','2021-03-18','2025-07-19 17:45:12','Team Lead'),('Muhammad ','Bilal','M','bilal@gmail.com','9876543212',48000,1500,23,0,'Sales','Excel','2023-01-10','2025-07-18 08:22:44','On Leave'),('Umar','Farooq','F','farooq@gmail.c0m','9876543213',90000,5000,31,1,'Finance','SQL,Excel','2020-08-22','2025-07-20 10:40:33','Senior Accountant'),('Waqas','raza','M','waqas@gmail.com','9876543214',55000,1800,27,1,'Marketing','Power BI,SQL','2024-01-05','2025-07-19 13:25:11','Marketing Executive');

CREATE USER 'intern'@'localhost' IDENTIFIED BY 'intern123';
GRANT SELECT,INSERT ON company_db.* TO 'intern'@'localhost';
SHOW GRANTS FOR 'intern'@'localhost';
REVOKE INSERT ON company_db.* FROM 'intern'@'localhost';
ALTER USER 'intern'@'localhost' IDENTIFIED BY 'newpassword123';
DROP USER 'intern'@'localhost';

SELECT * FROM employees ORDER BY FIELD(department,'IT','HR','Finance','Sales','Marketing');
SELECT FORMAT(salary,2) AS formatted_salary FROM employees;
SELECT LPAD(emp_id,5,'0') AS employee_id FROM employees;
SELECT RPAD(first_name,12,'*') AS padded_name FROM employees;


SELECT DATE_FORMAT(joining_date,'%d-%b-%Y') FROM employees;
SELECT STR_TO_DATE('21-07-2025','%d-%m-%Y');
SELECT PERIOD_DIFF(202507,202401) AS months_difference;
SELECT LAST_DAY(joining_date) FROM employees;







   