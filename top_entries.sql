/*To retrieve two minimum salaries, you can write a query as below:*/
SELECT DISTINCT Salary FROM EmployeePosition E1 
 WHERE 2 >= (SELECT COUNT(DISTINCT Salary)FROM EmployeePosition E2 
  WHERE E1.Salary >= E2.Salary) ORDER BY E1.Salary DESC;

/*To retrieve two maximum salaries, you can write a query as below: */

SELECT DISTINCT Salary FROM EmployeePosition E1 
 WHERE 2 >= (SELECT COUNT(DISTINCT Salary) FROM EmployeePosition E2 
  WHERE E1.Salary <= E2.Salary) ORDER BY E1.Salary DESC;
  
  
/*retrieve Departments who have less than 2 employees working in it.*/

SELECT DEPARTMENT, COUNT(EmpID) as 'EmpNo' FROM EmployeeInfo GROUP BY DEPARTMENT HAVING COUNT(EmpD) < 2;

retrieve EmpPostion along with total salaries paid for each of them.

SELECT EmpPosition, SUM(Salary) from EmployeePosition GROUP BY EmpPosition;

