mysql> CREATE TABLE employee (
  Emp_id VARCHAR(10) PRIMARY KEY,
  Emp_name VARCHAR(45) NOT NULL,
  Emp_MobileNo INT (20) NOT NULL,
  Emp_Address VARCHAR (50) NOT NULL,
  Emp_Salary INT NOT NULL
);

mysql>INSERT INTO employee(Emp_id,Emp_name,Emp_MobileNo,Emp_Address,Emp_Salary) VALUES ('E101','Yogita Pardeshi',6578877,'28, Balaji Society,Solapur',50000),('E102','Shraddha Patil',9928198,'34,kumtha naka,Pune',8700),('E103','Ritu rathi',563859,'45,renu complex,Mumbai',34000),('E104','Yogesh Patil',7692109,'35,sai nivas,Nagpur',45000),('E105','Prihul Badi',345109,'32/2, Balaji Society,Solapur',80000);
-- fetch some values
mysql>SELECT * FROM employee;
+--------+-----------------+--------------+------------------------------+------------+
| Emp_id | Emp_name        | Emp_MobileNo | Emp_Address                  | Emp_Salary |
+--------+-----------------+--------------+------------------------------+------------+
| E101   | Yogita Pardeshi |      6578877 | 28, Balaji Society,Solapur   |      50000 |
| E102   | Shraddha Patil  |      9928198 | 34,kumtha naka,Pune          |       8700 |
| E103   | Ritu rathi      |       563859 | 45,renu complex,Mumbai       |      34000 |
| E104   | Yogesh Patil    |      7692109 | 35,sai nivas,Nagpur          |      45000 |
| E105   | Prihul Badi     |       345109 | 32/2, Balaji Society,Solapur |      80000 |
+--------+-----------------+--------------+------------------------------+------------+

mysql>UPDATE employee set Emp_Salary=50000 WHERE Emp_id='E102';
mysql>SELECT * FROM employee;
+--------+-----------------+--------------+------------------------------+------------+
| Emp_id | Emp_name        | Emp_MobileNo | Emp_Address                  | Emp_Salary |
+--------+-----------------+--------------+------------------------------+------------+
| E101   | Yogita Pardeshi |      6578877 | 28, Balaji Society,Solapur   |      50000 |
| E102   | Shraddha Patil  |      9928198 | 34,kumtha naka,Pune          |      50000 |
| E103   | Ritu rathi      |       563859 | 45,renu complex,Mumbai       |      34000 |
| E104   | Yogesh Patil    |      7692109 | 35,sai nivas,Nagpur          |      45000 |
| E105   | Prihul Badi     |       345109 | 32/2, Balaji Society,Solapur |      80000 |
+--------+-----------------+--------------+------------------------------+------------+


mysql>delete from employee where Emp_ID='E103';
mysql>SELECT *FROM employee; 
+--------+-----------------+--------------+------------------------------+------------+
| Emp_id | Emp_name        | Emp_MobileNo | Emp_Address                  | Emp_Salary |
+--------+-----------------+--------------+------------------------------+------------+
| E101   | Yogita Pardeshi |      6578877 | 28, Balaji Society,Solapur   |      50000 |
| E102   | Shraddha Patil  |      9928198 | 34,kumtha naka,Pune          |      50000 |
| E104   | Yogesh Patil    |      7692109 | 35,sai nivas,Nagpur          |      45000 |
| E105   | Prihul Badi     |       345109 | 32/2, Balaji Society,Solapur |      80000 |
+--------+-----------------+--------------+------------------------------+------------+


mysql>SELECT *FROM employee WHERE Emp_name LIKE 'Y%';
+--------+-----------------+--------------+----------------------------+------------+
| Emp_id | Emp_name        | Emp_MobileNo | Emp_Address                | Emp_Salary |
+--------+-----------------+--------------+----------------------------+------------+
| E101   | Yogita Pardeshi |      6578877 | 28, Balaji Society,Solapur |      50000 |
| E104   | Yogesh Patil    |      7692109 | 35,sai nivas,Nagpur        |      45000 |
+--------+-----------------+--------------+----------------------------+------------+


mysql>SELECT *FROM employee WHERE Emp_name LIKE '%i';
+--------+-----------------+--------------+------------------------------+------------+
| Emp_id | Emp_name        | Emp_MobileNo | Emp_Address                  | Emp_Salary |
+--------+-----------------+--------------+------------------------------+------------+
| E101   | Yogita Pardeshi |      6578877 | 28, Balaji Society,Solapur   |      50000 |
| E105   | Prihul Badi     |       345109 | 32/2, Balaji Society,Solapur |      80000 |
+--------+-----------------+--------------+------------------------------+------------+


mysql>SELECT *FROM employee WHERE Emp_name LIKE '%og%';
+--------+-----------------+--------------+----------------------------+------------+
| Emp_id | Emp_name        | Emp_MobileNo | Emp_Address                | Emp_Salary |
+--------+-----------------+--------------+----------------------------+------------+
| E101   | Yogita Pardeshi |      6578877 | 28, Balaji Society,Solapur |      50000 |
| E104   | Yogesh Patil    |      7692109 | 35,sai nivas,Nagpur        |      45000 |
+--------+-----------------+--------------+----------------------------+------------+


mysql>SELECT *FROM employee WHERE Emp_name LIKE 'P__________';
+--------+-------------+--------------+------------------------------+------------+
| Emp_id | Emp_name    | Emp_MobileNo | Emp_Address                  | Emp_Salary |
+--------+-------------+--------------+------------------------------+------------+
| E105   | Prihul Badi |       345109 | 32/2, Balaji Society,Solapur |      80000 |
+--------+-------------+--------------+------------------------------+------------+



